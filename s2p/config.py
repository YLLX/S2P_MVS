

cfg = {}

# path to directory where (many) temporary files will be stored
cfg['temporary_dir'] = "s2p_tmp"
# temporary files are erased when s2p terminates. Switch to False to keep them
cfg['clean_tmp'] = False
# remove all generated files except from ply point clouds and tif raster dsm
cfg['clean_intermediate'] = False

# s2p processes the images tile by tile. The tiles are squares cropped from the
# reference image. The width and height of the tiles are given by this param, in pixels.
cfg['tile_size'] = 300
# width of a stripe of pixels to be masked along the reference input image borders
cfg['border_margin'] = 10


# max number of processes launched in parallel. None means the number of available cores
cfg['max_processes'] = None
# max number of processes launched in parallel for stereo_matching
# Uses the value of cfg['max_processes'] if None
cfg['max_processes_stereo_matching'] = 4

# timeout in seconds, after which a function that runs on a single tile is not
# waited for
cfg['timeout'] = 600
# debug mode (more verbose logs and intermediate results saved)
cfg['debug'] = False



###
### correcting pointing
###
cfg['relative_sift_match_thresh'] = True
# if cfg['relative_sift_match_thresh'] is True :
# sift threshold on the first over second best match ratio
# else (absolute) a reasonable value is between 200 and 300 (128-vectors SIFT descriptors)
cfg['sift_match_thresh'] = 0.6
# maximal pointing error, in pixels
cfg['max_pointing_error'] = 10
# max distance allowed for a point to the epipolar line of its match
cfg['epipolar_thresh'] = 0.5

# estimate rectification homographies either blindly using the rpc data or from
# the images actual content thanks to sift matches
cfg['rectification_method'] = 'rpc'  # either 'rpc' or 'sift'
# relative sift match threshold (else sift match threshold is absolute)
# number of ground control points per axis in matches from rpc generation
cfg['n_gcp_per_axis'] = 5
# margins used to increase the footprint of the rectified tiles, to
# account for poor disparity estimation close to the borders
cfg['horizontal_margin'] = 50  # for regularity and occlusions
cfg['vertical_margin'] = 10  # for regularity
# register the rectified images with a shear estimated from the rpc data
cfg['register_with_shear'] = True


# method to compute the disparity range: "sift", "exogenous", "wider_sift_exogenous", "fixed_pixel_range", "fixed_altitude_range"
cfg['disp_range_method'] = "exogenous"


# cfg['disp_range_method'] == 'exogenous' or 'wider_sift_exogenous'
cfg['disp_range_exogenous_low_margin'] = -10
cfg['disp_range_exogenous_high_margin'] = +10

# cfg['disp_range_method'] == 'sift' or 'wider_sift_exogenous'
cfg['disp_range_extra_margin'] = 0.2

# cfg['disp_range_method'] == 'fixed_altitude_range'
# set these params if you want to impose the altitude range manually
cfg['alt_min'] = None
cfg['alt_max'] = None

# cfg['disp_range_method'] == 'fixed_pixel_range'
# set these params if you want to impose the disparity range manually
cfg['disp_min'] = 0
cfg['disp_max'] = 96


# whether or not to use SRTM DEM (downloaded from internet) to estimate:
#   - the average ground altitude (to project the input geographic AOI to the
#     correct place in the input images)
#   - a reasonable altitude range (to get a better rectification when
#     "rectification_method" is set to "rpc")
cfg['use_srtm'] = True
# exogenous dem. If set, it superseeds SRTM.
cfg['exogenous_dem'] = None
cfg['exogenous_dem_geoid_mode'] = True
cfg['rpc_alt_range_scale_factor'] = 1

###
### stereo matching
###
# stereo matching algorithm: 'tvl1', 'msmw', 'hirschmuller08',
# hirschmuller08_laplacian', 'sgbm', 'mgm', 'mgm_multi'

# 'acvnet' 'hmsmnet'
cfg['matching_algorithm'] = 'mgm'

# timeout in seconds, after which a running mgm process will be killed
cfg['mgm_timeout'] = 600
# Maximum disparity range allowed in block matching
cfg['max_disp_range'] = None
# max number of OMP threads used by programs compiled with openMP
cfg['omp_num_threads'] = 1
# radius for erosion of valid disparity areas. Ignored if less than 2
cfg['msk_erosion'] = 2

# if cfg['matching_algorithm']='mgm' / 'mgm_multi_lsd' / 'mgm_multui'
# size of the Census NCC square windows used in mgm
cfg['census_ncc_win'] = 5
# distance threshold (in pixels) for the left-right consistency test
cfg['mgm_leftright_threshold'] = 1.0
# controls the mgm left-right consistency check. 0: disabled
#                                                1 (default): enabled at all scales
#                                                2: enables only at the last scale (faster)
cfg['mgm_leftright_control'] = 1
# controls the mgm mindiff filter check. -1: disabled (default), produce denser maps
#                                         1: enabled, produce conservative results
cfg['mgm_mindiff_control'] = -1
# number of directions explored for regularization
cfg['mgm_nb_directions'] = 8
# MGM parameter: speckle filter minimum area (REMOVESMALLCC flag)
cfg['stereo_speckle_filter'] = 25
# MGM parameter: regularity (multiplies P1 and P2)
cfg['stereo_regularity_multiplier'] = 1.0


# remove isolated 3d points in height maps
cfg['3d_filtering_r'] = 5  # radius in meters
cfg['3d_filtering_n'] = 10  # number of points
# cfg['gsd'] = 0.5  # 使用 RPC 计算得到


# clean height maps outliers
cfg['cargarse_basura'] = True
cfg['fusion_operator'] = 'average_if_close'
# threshold (in meters) used for the fusion of two dems in triplet processing
cfg['fusion_thresh'] = 3


# Output coordinate reference system
# All formats accepted by `pyproj.CRS()` are allowed, for example:
# 32740 (int interpreted as an EPSG code), or
# "epsg:32740+5773" (authority string), or
# "+proj=utm +zone=40 +south +datum=WGS84 +units=m +vunits=m +no_defs +type=crs" (proj4 string)
# If None, the local UTM zone will be used
cfg['out_crs'] = None   # 使用 RPC 计算得到

# If the out_crs is not set this parameter determines if the output CRS uses the EGM96 geoid vertical datum (if True)
# or the WGS84 ellipsoid vertical datum (if False). If out_crs is set, this parameter is ignored.
cfg['out_geoid'] = False



# resolution of the output digital surface model, in meters per pixel
cfg['dsm_resolution'] = 4
# radius to compute altitudes (and to interpolate the small holes)
cfg['dsm_radius'] = 0
# dsm_sigma controls the spread of the blob from each point for the dsm computation
# (dsm_resolution by default)
cfg['dsm_sigma'] = None
