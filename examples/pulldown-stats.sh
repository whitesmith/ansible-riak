for i in 10.42.0.6 10.42.0.7 10.42.0.8;
do echo $i
    mkdir -p /tmp/stats.$i
    rsync -avz -e "ssh -o HostName=$i -o User=vagrant -o Port=22 -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no -o PasswordAuthentication=no -o IdentityFile=${HOME}/.vagrant.d/insecure_private_key -o IdentitiesOnly=yes -o LogLevel=FATAL -o ForwardAgent=yes " vagrant@$i:"/tmp/stat*" /tmp/stats.$i
done
