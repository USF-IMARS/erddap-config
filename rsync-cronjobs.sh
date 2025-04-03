#!/bin/bash
# This script copies files from NFS automount location 
# to a local location on the ERDDAP server.
# This is done because authenticating through docker
# and then NFS is bugged.
# 
# This should be added to the root crontab as:
# 0 7 * * 0 /bin/bash /root/docker_volumes/erddap-config/rsync-cronjobs.sh 2>&1 /root/erddap-rsync-cronjob.log

LOCAL_DIR=/mnt/sdb 
# LOCAL_DIR_02=/mnt/sdc  # NOTE: currently unused
REMOTE_DIR=/srv/imars-objects

# these vars just to help create pretty logs
PREFIX="\n# ==="
SUFFIX="=== === ==="

return_code=0
do_rsync_job() {
    # params: 
    #  $1 : source_location : location to copy from (relative to $REMOTE_DIR) 
    #  $2 : target_location : location to copy to (absolute).
    #
    # example usage: do_rsync_job source_location target_location
    printf "\n$1 -> $2\n"
    rsync -hvr --delete ${REMOTE_DIR}/$1 $2
    return_code=$(($return_code && $?))  # keep track of exit code
}

printf "\nbeginning rsync jobs - `date`"

echo "${PREFIX} GoM MODA ${SUFFIX}"
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_MODA/OC/   ${LOCAL_DIR}/moda_oc_7d_gom/. 
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_MODA/SST4/ ${LOCAL_DIR}/moda_sst4_7d_gom/.
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_MODA/SST/  ${LOCAL_DIR}/moda_sst_7d_gom/.

echo "${PREFIX} GoM VSNPP ${SUFFIX}"
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_VSNPP/OC/   ${LOCAL_DIR}/vsnpp_oc_7d_gom/.
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_VSNPP/SSTN/ ${LOCAL_DIR}/vsnpp_sstn_7d_gom/.
do_rsync_job tpa_pgs/rois/gom/MEAN_7D_VSNPP/SST/  ${LOCAL_DIR}/vsnpp_sst_7d_gom/.

echo "${PREFIX} SE US MODA ${SUFFIX}"
do_rsync_job tpa_pgs/rois/seus/MEAN_7D_MODA/OC/ ${LOCAL_DIR}/moda_oc_7d_seus/.
do_rsync_job tpa_pgs/rois/seus/MEAN_7D_MODA/SST4/ ${LOCAL_DIR}/moda_sst4_7d_seus/.

echo "${PREFIX} Copernicus Mirrors ${SUFFIX}"
do_rsync_job tpa_pgs/copernicus /mnt/sdd/copernicus

printf "\ndone - `date`"
exit $return_code
