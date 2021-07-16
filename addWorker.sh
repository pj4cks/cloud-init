## RUN THIS ON THE MASTER NODE ##
NODE_TOKEN=`sudo cat /var/lib/rancher/k3s/server/node-token`
MASTER_IP=`ip addr | grep global | grep eth | grep -v 'flannel' | awk '{print $2}' | awk -F'/' '{print $1}'`
echo "sudo curl -sfL https://get.k3s.io | K3S_URL=https://$MASTER_IP:6443 K3S_TOKEN=$NODE_TOKEN sh -"


## THIS MUST RUN ON THE MASTER AFTER THE NODE IS ADDED ##
kubectl label node <NODE NAME> node-role.kubernetes.io/worker=worker