MACHINE="orion"
ACCOUNT="ufs-phys"
# Decide where you would like output to be written.
# For example, "/work/noaa/ufs-phys/ekalina/ufssrw_20210719/expt_dirs"
EXPT_BASEDIR=""
# Subdirectory to contain this experiment's results.
# Recommend including the domain, grid spacing, and physics suite.
# For example, "RRFS_CONUS_13km_GFS_v16"
EXPT_SUBDIR=""

# On Orion, there is little hope of using anything other than the urgent queue.
# But, only one job per project can run in the urgent queue at a time.
QUEUE_DEFAULT="urgent"
QUEUE_HPSS="urgent"
QUEUE_FCST="urgent"

VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

# Note that there are both 13km and 3km RRFS_CONUS grids.
PREDEF_GRID_NAME="RRFS_CONUS_13km"
GRID_GEN_METHOD="ESGgrid"
QUILTING="TRUE"
CCPP_PHYS_SUITE="FV3_GFS_v16"
#GWD_HRRRsuite_BASEDIR="/work/noaa/gsd-fv3-dev/gsketefia/UFS/FV3LAM_pregen/RRFS_CONUS_3km"
FCST_LEN_HRS="60"
LBC_SPEC_INTVL_HRS="3"
WTIME_RUN_FCST="07:30:00"
# Get write component output and run the post every three hours.
OUTPUT_FREQ="3"

# Modify the first and last cycle depending on whether you are running warm or cold
# season cases.
DATE_FIRST_CYCL="20191125"
DATE_LAST_CYCL="20200109"
CYCL_HRS=( "00" )
# Launch a run every three days.
CYCL_FREQ="72"

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="nemsio"
FV3GFS_FILE_FMT_LBCS="grib2"

USE_USER_STAGED_EXTRN_FILES="TRUE"
EXTRN_MDL_SOURCE_BASEDIR_ICS="/work/noaa/fv3-cam/ekalina/gfs_grib2_combine"
EXTRN_MDL_FILES_ICS=( "gfs.t00z.atmanl.nemsio" "gfs.t00z.sfcanl.nemsio" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/work/noaa/fv3-cam/ekalina/gfs_grib2_combine"
EXTRN_MDL_FILES_LBCS=( "gfs.t00z.pgrb2.0p25.f003" "gfs.t00z.pgrb2.0p25.f006" "gfs.t00z.pgrb2.0p25.f009" "gfs.t00z.pgrb2.0p25.f012" \
                       "gfs.t00z.pgrb2.0p25.f015" "gfs.t00z.pgrb2.0p25.f018" "gfs.t00z.pgrb2.0p25.f021" "gfs.t00z.pgrb2.0p25.f024" \
                       "gfs.t00z.pgrb2.0p25.f027" "gfs.t00z.pgrb2.0p25.f030" "gfs.t00z.pgrb2.0p25.f033" "gfs.t00z.pgrb2.0p25.f036" \
                       "gfs.t00z.pgrb2.0p25.f039" "gfs.t00z.pgrb2.0p25.f042" "gfs.t00z.pgrb2.0p25.f045" "gfs.t00z.pgrb2.0p25.f048" \
                       "gfs.t00z.pgrb2.0p25.f051" "gfs.t00z.pgrb2.0p25.f054" "gfs.t00z.pgrb2.0p25.f057" "gfs.t00z.pgrb2.0p25.f060" )

USE_CRON_TO_RELAUNCH="TRUE"
CRON_RELAUNCH_INTVL_MNTS="05"

# No need to run these tasks over and over again.
# Paths are specific to 13 and 3 km grids!!!
RUN_TASK_MAKE_GRID="FALSE"
GRID_DIR="/work/noaa/fv3-cam/ekalina/static/C775/grid"
RUN_TASK_MAKE_OROG="FALSE"
OROG_DIR="/work/noaa/fv3-cam/ekalina/static/C775/orog"
RUN_TASK_MAKE_SFC_CLIMO="FALSE"
SFC_CLIMO_DIR="/work/noaa/fv3-cam/ekalina/static/C775/sfc_climo"
