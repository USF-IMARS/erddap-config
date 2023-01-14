#!/bin/bash
# This script copies files from NFS automount location 
# to a local location on the ERDDAP server.
# This is done because authenticating through docker
# and then NFS is bugged.
# 
# This should be added to the root crontab as:
# 0 7 * * 0 /bin/bash /root/rsync-cronjobs.sh > /root/rsync-cronjob.log

LOCAL_DIR_01=/mnt/sdb 
LOCAL_DIR_02=/mnt/sdc

PREFIX="\t ==="
SUFFIX="=== === ==="

echo "${PREFIX} FK MODA ${SUFFIX}"
rsync -hazv /srv/imars-objects/fk/MEAN_7D_MODA/OC/* /mnt/sdb/moda_oc_7d_fk/. &&
rsync -hazv /srv/imars-objects/fk/MEAN_7D_MODA/SST4/* /mnt/sdb/moda_sst4_7d_fk/.
rsync -hazv /srv/imars-objects/fk/MEAN_7D_MODA/SST/* /mnt/sdb/moda_sst_7d_fk/.

echo "${PREFIX} FK VSNPP ${SUFFIX}"
rsync -hazv /srv/imars-objects/fk/MEAN_7D_VSNPP/OC/* /mnt/sdb/vsnpp_oc_7d_fk/.
rsync -hazv /srv/imars-objects/fk/MEAN_7D_VSNPP/SSTN/* /mnt/sdb/vsnpp_sstn_7d_fk/.
rsync -hazv /srv/imars-objects/fk/MEAN_7D_VSNPP/SST/* /mnt/sdb/vsnpp_sst_7d_fk/.

echo "${PREFIX} FGB MODA ${SUFFIX}"
rsync -hazv /srv/imars-objects/fgb/MEAN_7D_MODA/OC/* /mnt/sdb/moda_oc_7d_fgb/.
rsync -hazv /srv/imars-objects/fgb/MEAN_7D_MODA/SST4/* /mnt/sdb/moda_sst4_7d_fgb/.
