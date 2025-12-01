
#!/bin/bash

echo "Sync Started"

#data
#rsync -a --exclude 'vago' --exclude '.cache' --exclude 'vd' --exclude 'dwl' /home/vago/ /mnt/data/vago/ --delete

rsync -a /home/vago/vd/ /mnt/data/sync-vago/vd/ --delete

rsync -a /home/vago/vago/ /mnt/data/sync-vago/vago/ --delete

rsync -a /home/vago/dwl/ /mnt/data/sync-vago/dwl/ --delete

#VT
rsync -a /home/vago/vago/ /mnt/VT/sync-vago/vago/ --delete

rsync -a /home/vago/vd/ /mnt/VT/sync-vago/vd/ --delete

rsync -a /home/vago/dwl/ /mnt/VT/sync-vago/dwl/ --delete

echo "Sync Finished"

