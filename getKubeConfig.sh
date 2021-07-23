### THIS NEEDS TO BE RUN ON MASTER NODE ###
MASTER_IP=`ip addr | grep global | grep eth | grep -v 'flannel' | awk '{print $2}' | awk -F'/' '{print $1}'`
cat /etc/rancher/k3s/k3s.yaml | sed "s/127.0.0.1/$MASTER_IP/"

### AFTER THIS IS RUN, PLACE ON YOUR COMPUTER ###
