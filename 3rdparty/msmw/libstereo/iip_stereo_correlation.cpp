#include <stdio.h>
#include <stdlib.h>
#include <string.h>


#include "../libraryStable/libraryBasic.h"

#include "libstereo.h"

using namespace std;




int main(int argc, char **argv)
{
	
	
	vector <OptStruct *> options;
    
    
    OptStruct om = {"m:", 0, NULL, NULL,  "minimum displacement"};  options.push_back(&om);
	OptStruct oM = {"M:", 0, NULL, NULL,  "maximum displacement"};  options.push_back(&oM);
    
    //! Option for distance, scale and precision
	OptStruct oK = {"k:", 0, NULL, NULL, "input correlation window"}; options.push_back(&oK);
	
    OptStruct oX = {"x:", 0, NULL, NULL, "window x size"}; options.push_back(&oX);
	OptStruct oY = {"y:", 0, NULL, NULL, "window y size"}; options.push_back(&oY);
	OptStruct oW = {"w:", 0, "0", NULL, "flag for weighting window"}; options.push_back(&oW);
    OptStruct oI = {"i:", 0, "1", NULL, "type of distance"}; options.push_back(&oI);
	OptStruct oP = {"p:", 0, "1", NULL, "number of precisions for single scale"}; options.push_back(&oP);
	OptStruct oN = {"n:", 0, "3", NULL, "number of scales"}; options.push_back(&oN);
    
    //! Noise std
    OptStruct oF = {"f:", 0, NULL, NULL, "noise standard deviation"}; options.push_back(&oF);
    
    //! Options for checking LR-RL
    OptStruct oR = {"r:", 0, NULL, NULL, "reciprocity flag and value"}; options.push_back(&oR);
    OptStruct oG = {"g:", 0, NULL, NULL, "subpixel reciprocity flag"}; options.push_back(&oG);
    OptStruct oRD = {"R:", 0, NULL, NULL, "reciprocity dual flag"}; options.push_back(&oRD);
    OptStruct oIR = {"l:", 0, NULL, NULL, "inverse reciprocity flag"}; options.push_back(&oIR);
    
    //! Other checking
    OptStruct oD = {"d:", 0, NULL, NULL, "mindist flag and value"}; options.push_back(&oD);
    OptStruct oT = {"t:", 0, NULL, NULL, "mindist dilatation flag"}; options.push_back(&oT);
    
    OptStruct oS = {"s:", 0, NULL, NULL, "self similarity flag and value"}; options.push_back(&oS);
    OptStruct oB = {"b:", 0, NULL, NULL, "integral of derivatives"}; options.push_back(&oB);
    OptStruct oV = {"v:", 0, NULL, NULL, "variance flag and value"}; options.push_back(&oV);
    
    OptStruct oO = {"o:", 0, "0", NULL, "remove isolated flag"}; options.push_back(&oO);
	
	OptStruct oA = {"a:", 0, NULL, NULL, "use laplacian of the image instead of the image itself"}; options.push_back(&oA);
    
    
	vector<ParStruct *> parameters;
	ParStruct pinput = {"image1", NULL, "input left image"}; parameters.push_back(&pinput);
	ParStruct pinput2 = {"image2", NULL, "input right image"}; parameters.push_back(&pinput2);
	ParStruct poutput = {"output", NULL, "output disparity"}; parameters.push_back(&poutput);
	ParStruct pmask = {"mask", NULL, "output mask"}; parameters.push_back(&pmask);
    
	
	
	if (!parsecmdline("iip_stereo_multi_scale_pixel_computation","Pixel precision correlation", argc, argv, options, parameters))
		return 0;
	
	
	
	//! Parameters: Input Images
	libIIPStable::cflimage input;
	input.load(pinput.value);
	
	libIIPStable::cflimage input2;
	input2.load(pinput2.value);
	
	
	
    //! Parameters: structure
	libIIPStable::strParameters strPar;
	
    
    
    //! Correlation window
    if (!oK.flag)
    {
        
        
        if (!oX.flag || !oY.flag) { printf("error :: please specify window size\n"); return -1;}
        strPar.flagWinWeighted= atoi(oW.value);
        
        libIIPStable::flimage prolate(atoi(oX.value), atoi(oY.value));
        prolate=1.0f;
        if (strPar.flagWinWeighted)
        {
            stereo_build_gaussian_kernel(prolate, 0.05f, 0.05f);
        }
        prolate.normalizeL1();
        strPar.prolate = prolate;
        if (STEREOVERBOSE) {printf("info :: saving used prolate\n "); prolate.save("stereo_prolate.pmf");}
        
        
    } else
    {
        libIIPStable::flimage prolate;
        prolate.load(oK.value);
        prolate.normalizeL1();
        strPar.flagWinWeighted = 1;
        strPar.prolate = prolate;
    }
    
    
    
    //! type of distance
    strPar.itypeDist= atoi(oI.value);
	
    //! number of precisions for single scale
    strPar.inPrecisions = atoi(oP.value);
	
    //! number of scales
    strPar.nScales = atoi(oN.value);
	
    
    //! reciprocity flag
    strPar.flagRecip = oR.flag;
    if (oR.flag)
    {
        if (atof(oR.value) < 0.0f) strPar.flagRecip = 0;
        else strPar.valueRecip = atof(oR.value);
    }
    
    
    //! reciprocity flag
    strPar.flagRecipDual = oRD.flag;
    if (oRD.flag && atof(oRD.value) < 0.0f) strPar.flagRecipDual = 0;
    
    
    //! inverse reciprocity flag
    strPar.flagiRecip = oIR.flag;
    if (oIR.flag && atof(oIR.value) < 0.0f) strPar.flagiRecip = 0;
    
    
    //! flag subrecip flag
    strPar.flagSubRecip = oG.flag;
    if (oG.flag)
    {
        if (atof(oG.value) < 0.0) strPar.flagSubRecip = 0;
        else strPar.valueSubRecip = atof(oG.value);
    }
    
    
    
    //! Remove isolated
    strPar.flagRemoveIsolated = oO.flag;
    if (strPar.flagRemoveIsolated)
    {
        if (atof(oO.value) < 0.0f) strPar.flagRemoveIsolated = 0;
        else    strPar.valueRemoveIsolated = atof(oO.value);
    }
    
    
    
    
    //! mindist flag
    strPar.flagMinDist = oD.flag;
    if (oD.flag)
    {
        if (atof(oD.value) < 0.0f) strPar.flagMinDist=0;
        else strPar.valueMinDist = atof(oD.value);
	}
    
    
    strPar.flagMinDistDilatation = oT.flag;
    if (oT.flag && atof(oT.value) < 0.0f) strPar.flagMinDistDilatation = 0;
    

    
    //! self similarity flag
    strPar.flagSelfSimilarity = oS.flag;
    if (oS.flag)
    {
        if (atof(oS.value) < 0.0f) strPar.flagSelfSimilarity = 0;
        else strPar.valueSelfSimilarity = atof(oS.value);
    }
    
    
    //! variance flag
    strPar.flagVariance = oV.flag;
    if (oV.flag)
    {
        if (atof(oV.value) < 0.0f) strPar.flagVariance = 0;
        else strPar.valueVariance = atof(oV.value);
    }
    
    
    //! integral derivatives flag
    strPar.flagHorInfo = oB.flag;
    if (oB.flag)
    {
        if (atof(oB.value) < 0.0f) strPar.flagHorInfo = 0;
        else strPar.valueHorInfo = atof(oB.value);
    }
    
    
    
    //! noise standard deviation
    if (oF.flag)
        strPar.fSigma = atof(oF.value);
    else if (oV.flag || oS.flag || oT.flag)
    {
        printf("error :: please specify noise std");
        return -1;
    }
    
    
    
    //! Compute laplacian of the image
    if (oA.flag && atof(oA.value) >= 0.0f)
    {
    
        //! build kernel
        int kwidth = 7;
        int skwidth = kwidth / 2;
        libIIPStable::flimage kernel(kwidth,kwidth); kernel=1.0f;
        stereo_build_gaussian_kernel(kernel, 0.05f, 0.05f); kernel.normalizeL1();
        
        kernel[skwidth * kwidth + skwidth] -= 1.0;
        
        
        //! normalize to variance equal 1
        float fSum = 0.0f;
        for (int ii=0; ii < kernel.wh(); ii++) fSum += kernel[ii] * kernel[ii];
        for (int ii=0; ii < kernel.wh(); ii++) kernel[ii] /= sqrtf(fSum);
      

        
        input = input.convolve(kernel);
        input2 = input2.convolve(kernel);
        
        
    }
    
    
    
	// Parameters: dmin, dmax images
	// Range of search for each pixel of the first image in the epipolar line of the second image (x+dmin,x+dmax)
	// Range is controlled to be inside the image in the correlation process
	libIIPStable::flimage Dmin(input.w(),input.h());
	libIIPStable::flimage Dmax(input.w(),input.h());
	{
		
		if (!om.flag)   Dmin = - (float) input2.w();
		else Dmin = atof(om.value);
		
		if (!oM.flag)   Dmax = (float) input2.w();
		else Dmax = atof(oM.value);
		
        
        strPar.dmin0 = Dmin.min();
		strPar.dmax0 = Dmax.max();
		
		
    }
	
    
    
    
	// Parameters: idmin, idmax images
	// Range of search for each pixel of the second image in the epipolar line of the first image
	// Computed as the inverse range of the first image
	// Range is controlled to be inside the image in the correlation function
	// Used only if reciprocity flag is used and correlation is performed in both directions
	libIIPStable::flimage iDmin(input2.w(),input2.h());
	libIIPStable::flimage iDmax(input2.w(),input2.h());
	{
		
		if (!oM.flag)
			iDmin = - (float) input.w();
		else
			iDmin = -atof(oM.value);
		
		
		if (!om.flag)
			iDmax = (float) input.w();
		else
			iDmax= - atof(om.value);
		
		
		strPar.idmin0 = iDmin.min();
		strPar.idmax0 = iDmax.max();
		
		
	}
    
    
    
    
    
    // Memory for disparity and mask of selected pixel taking left image as reference
	int iiScale = 1;
    libIIPStable::flimage odisp(input.w(), input.h());     odisp = 0.0f;
    libIIPStable::flimage odist(input.w(), input.h());     odist = fLarge;
	libIIPStable::flimage omask(input.w(), input.h());     omask = 0.0f;
	
    libIIPStable::flimage odisp2(input2.w(), input2.h());     odisp = 0.0f;
    libIIPStable::flimage odistr(input2.w(), input2.h());     odistr = fLarge;
	libIIPStable::flimage omask2(input2.w(), input2.h());     omask = 0.0f;
	
   // UNSET MULTI WINDOW
   strPar.flagMultiWin = 0;
	
    stereo_pixel_multiscale_chain(input, input2, iiScale, Dmin, Dmax, iDmin, iDmax, odisp, odisp2, odist, odistr, omask, omask2, strPar);
    
    
    
    
	odisp.save(poutput.value);
	omask.save(pmask.value);
    
	
}



