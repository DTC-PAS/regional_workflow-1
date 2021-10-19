MACHINE="hera"
ACCOUNT="ufs-phys"
# Decide where you would like output to be written.
# For example, "/work/noaa/ufs-phys/ekalina/ufssrw_20210719/expt_dirs"
EXPT_BASEDIR=""
# Subdirectory to contain this experiment's results.
# Recommend including the domain, grid spacing, and physics suite.
# For example, "DYNAMO_13km_GFS_v16"
EXPT_SUBDIR=""

QUEUE_DEFAULT="batch"
QUEUE_HPSS="service"
QUEUE_FCST="batch"

VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

# Note that there are both 13km and 3km DYNAMO grids.
PREDEF_GRID_NAME="DYNAMO_13km"
GRID_GEN_METHOD="ESGgrid"
QUILTING="TRUE"
# IMPORTANT NOTE: If you are running RRFS physics at 13 km,
# you should set CCPP_PHYS_SUITE="FV3_RRFS_v1alpha_cumulus",
# since FV3_RRFS_v1alpha does not have cumulus.
CCPP_PHYS_SUITE="FV3_GFS_v16"
FCST_LEN_HRS="72"
LBC_SPEC_INTVL_HRS="6"
# Adjust the forecast walltime as appropriate.
WTIME_RUN_FCST="08:00:00"
# Get write component output and run the post every three hours.
OUTPUT_FREQ="1"

# Modify the first and last cycle depending on whether you are running warm or cold
# season cases.
DATE_FIRST_CYCL="20111016"
DATE_LAST_CYCL="20111103"
CYCL_HRS=( "00" )
# Launch a run every three days.
CYCL_FREQ="72"

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="nemsio"
FV3GFS_FILE_FMT_LBCS="nemsio"

USE_USER_STAGED_EXTRN_FILES="TRUE"
EXTRN_MDL_SOURCE_BASEDIR_ICS="/work/noaa/ufs-phys/ekalina/gefsv12_analyses"
EXTRN_MDL_FILES_ICS=( "sfg_2011102112_fhr00_control" "bfg_2011102112_fhr00_control" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/work/noaa/ufs-phys/ekalina/gefsv12_analyses"
EXTRN_MDL_FILES_LBCS=( "sfg_2011102118_fhr00_control" "sfg_2011102200_fhr00_control" "sfg_2011102206_fhr00_control" "sfg_2011102212_fhr00_control" )

# NST was off in GEFSv12, so we cannot initialize the NSST
# parameterization with the field from GEFS.
CONVERT_NST="FALSE"

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="05"

# If you don't want to run the pre-processing tasks 
# over and over again, put the grid, orog, and sfc_climo output
# from your first run in a safe place and point to it here.
# Paths/files are resolution and domain specific!!!
#RUN_TASK_MAKE_GRID="FALSE"
#GRID_DIR="/work/noaa/fv3-cam/ekalina/static/C775/grid"
#RUN_TASK_MAKE_OROG="FALSE"
#OROG_DIR="/work/noaa/fv3-cam/ekalina/static/C775/orog"
#RUN_TASK_MAKE_SFC_CLIMO="FALSE"
#SFC_CLIMO_DIR="/work/noaa/fv3-cam/ekalina/static/C775/sfc_climo"
