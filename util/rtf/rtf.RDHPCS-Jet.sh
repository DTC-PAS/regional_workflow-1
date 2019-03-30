#!/bin/ksh -f

################################################################################
#
# UNIX Script Documentation Block
#
# Script name:         hafs_run_time.sh.inc.RDHPCS-jet
#
# Script description:  This script defines the run-time environment on the
#                       NOAA RDHPCS-Jet cluster.
#
# Script history log:  2019-03-29  Henry Winterbottom -- Original version.
#
################################################################################

#set -x

#----

. /apps/lmod/lmod/init/sh

export libdir=/mnt/lfs3/projects/hfv3gfs/gwv/ljtjet/lib

export NCEPLIBS=/mnt/lfs3/projects/hfv3gfs/gwv/ljtjet/lib
module use /mnt/lfs3/projects/hfv3gfs/gwv/ljtjet/lib/modulefiles

module load bacio-intel-sandybridge/2.0.2
module load sp-intel-sandybridge/2.0.2
module load ip-intel-sandybridge/2.0.0
module load w3nco-intel-sandybridge/2.0.6
module load w3emc-intel-sandybridge/2.2.0
module load nemsio-intel-sandybridge/2.2.2

module use /mnt/lfs3/projects/hfv3gfs/gwv/ltmp2/lib//modulefiles
module load esmflocal/7_1_0r

module load rocoto/1.3.0-RC3
module load slurm/18.08.6

module list