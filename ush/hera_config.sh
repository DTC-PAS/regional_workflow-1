MACHINE="hera"
ACCOUNT="ufs-phys"
EXPT_SUBDIR="r2_FV3_GFS_v17_p8_13km"

COMPILER="intel"
VERBOSE="TRUE"

RUN_ENVIR="community"
PREEXISTING_DIR_METHOD="rename"

PREDEF_GRID_NAME="RRFS_CONUS_13km"
QUILTING="TRUE"

DO_ENSEMBLE="FALSE"
NUM_ENS_MEMBERS="2"

#CCPP_PHYS_SUITE="FV3_GFS_v16"
#CCPP_PHYS_SUITE="FV3_RRFS_v1beta"
#CCPP_PHYS_SUITE="FV3_HRRR"
CCPP_PHYS_SUITE="FV3_GFS_v17_p8"
FCST_LEN_HRS="60"
LBC_SPEC_INTVL_HRS="6"

DATE_FIRST_CYCL="20190512"
DATE_LAST_CYCL="20190512"
CYCL_HRS=( "00" )

EXTRN_MDL_NAME_ICS="FV3GFS"
EXTRN_MDL_NAME_LBCS="FV3GFS"

FV3GFS_FILE_FMT_ICS="nemsio"
FV3GFS_FILE_FMT_LBCS="grib2"

WTIME_RUN_FCST="07:59:00"

MODEL="FV3_GFS_v17_p8_CONUS_13km"
METPLUS_PATH="path/to/METPlus"
MET_INSTALL_DIR="path/to/MET"
CCPA_OBS_DIR="/path/to/processed/CCPA/data"
MRMS_OBS_DIR="/path/to/processed/MRMS/data"
NDAS_OBS_DIR="/path/to/processed/NDAS/data"

RUN_TASK_MAKE_GRID="TRUE"
RUN_TASK_MAKE_OROG="TRUE"
RUN_TASK_MAKE_SFC_CLIMO="TRUE"
RUN_TASK_GET_OBS_CCPA="FALSE"
RUN_TASK_GET_OBS_MRMS="FALSE"
RUN_TASK_GET_OBS_NDAS="FALSE"
RUN_TASK_VX_GRIDSTAT="FALSE"
RUN_TASK_VX_POINTSTAT="FALSE"
RUN_TASK_VX_ENSGRID="FALSE"
RUN_TASK_VX_ENSPOINT="FALSE"

#
# Uncomment the following line in order to use user-staged external model 
# files with locations and names as specified by EXTRN_MDL_SOURCE_BASEDIR_ICS/
# LBCS and EXTRN_MDL_FILES_ICS/LBCS.
#
USE_USER_STAGED_EXTRN_FILES="TRUE"
#
# The following is specifically for Hera.  It will have to be modified
# if on another platform, using other dates, other external models, etc.
# Uncomment the following EXTRN_MDL_*_ICS/LBCS only when USE_USER_STAGED_EXTRN_FILES=TRUE
#
EXTRN_MDL_SOURCE_BASEDIR_ICS="/scratch2/BMC/ufs-phys/Man.Zhang/_SRW_develop/GFSv15p2_input"
#EXTRN_MDL_FILES_ICS=( "gfs.t00z.pgrb2.0p25.f000" )
EXTRN_MDL_FILES_ICS=( "gfs.t00z.atmanl.nemsio" "gfs.t00z.sfcanl.nemsio" )
EXTRN_MDL_SOURCE_BASEDIR_LBCS="/scratch2/BMC/ufs-phys/Man.Zhang/_SRW_develop/GFSv15p2_input"
EXTRN_MDL_FILES_LBCS=( "gfs.t00z.pgrb2.0p25.f006" "gfs.t00z.pgrb2.0p25.f012" "gfs.t00z.pgrb2.0p25.f018" "gfs.t00z.pgrb2.0p25.f024" \
                       "gfs.t00z.pgrb2.0p25.f030" "gfs.t00z.pgrb2.0p25.f036" "gfs.t00z.pgrb2.0p25.f042" "gfs.t00z.pgrb2.0p25.f048" "gfs.t00z.pgrb2.0p25.f054" "gfs.t00z.pgrb2.0p25.f060" )
#EXTRN_MDL_FILES_LBCS=( "gfs.t00z.pgrb2.0p25.f003" "gfs.t00z.pgrb2.0p25.f006" "gfs.t00z.pgrb2.0p25.f009" "gfs.t00z.pgrb2.0p25.f012" \
#                       "gfs.t00z.pgrb2.0p25.f015" "gfs.t00z.pgrb2.0p25.f018" "gfs.t00z.pgrb2.0p25.f021" "gfs.t00z.pgrb2.0p25.f024" \
#                       "gfs.t00z.pgrb2.0p25.f027" "gfs.t00z.pgrb2.0p25.f030" "gfs.t00z.pgrb2.0p25.f033" "gfs.t00z.pgrb2.0p25.f036" \
#                       "gfs.t00z.pgrb2.0p25.f039" "gfs.t00z.pgrb2.0p25.f042" "gfs.t00z.pgrb2.0p25.f045" "gfs.t00z.pgrb2.0p25.f048" \
#                       "gfs.t00z.pgrb2.0p25.f051" "gfs.t00z.pgrb2.0p25.f054" "gfs.t00z.pgrb2.0p25.f057" "gfs.t00z.pgrb2.0p25.f060" )

