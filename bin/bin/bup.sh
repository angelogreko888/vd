
#!/bin/bash

echo "Sync Started"

#data
rsync -a --exclude 'vago' --exclude '.cache' --exclude 'vd' --exclude 'data' /home/vago/ /mnt/data/vago/ --delete

rsync -a /home/vago/vd/ /mnt/data/sync-vago/vd/ --delete

rsync -a /home/vago/vago/ /mnt/data/sync-vago/vago/ --delete


#vt
#rsync -a /home/vago/vago/ /mnt/vt/sync-vago/vago/ --delete

#rsync -a /home/vago/vd/ /mnt/vt/sync-vago/vd/ --delete

echo "Sync Finished"

