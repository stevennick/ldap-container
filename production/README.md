# ldap-container


## Image status
See HackMD logs [here](https://hackmd.io/s/S1d8xIigV)

## Test 
### By docker
```shell=
ex. sthost01 / PWDhostst01
// Create contaiber
docker build -t ubuntu:ldap .
docker run -d -P --name test ubuntu:ldap
docker exec -ti test bash

// Check connect ldap server
getent passwd slurmuser
su ${ldapuser}
exit

// ssh by ldap user
ssh ${ldapuser}@localhost -p ${22forword_port}

// delete container
docker stop test && docker rm test
```

### Test by kubernetes
```shell=
kubectl create -f ldap-ssh.yaml
```
