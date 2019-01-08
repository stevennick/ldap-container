# ldap-container


## Image status
See HackMD logs [here](https://hackmd.io/s/S1d8xIigV)

## Build requirement
* Docker CE 18.06 and up
* Linux environment
* Avail large free space (>500G is good)
* Accessible account for [ngc.nvidia.com](https://ngc.nvidia.com), and setup docker login by given access key.
* For additional AI test puropse, build machine with compatiable NVIDIA Graphics Hardware and NV Driver & docker environment is required. It's not necessarily if only for image build purpose.
* For push ready container to target environment, you also need the push rights to the target server. Usually you will need to set up docker login to the target environment. Contact your service vendor for detail configuration.

## Build

```shell
// Build container
docker build -t registry.twcc.ai/ngc/nvidia/ubuntu-v1:latest -f ./ubuntu/Dockerfile common
```

Current suitable build command for provided images can be found in file `build-image.sh`.

## Test

### Build Image Integrity Check
```shell
cd ../IntegrityCheck
./checkImage registry.twcc.ai/ngc/nvidia/ubuntu-v1:latest
```
If image is OK, the problem list will be empty.

**NOTE:** Integrity Check use file list and md5sums to check image files. Check target file lists are listed in `IntegrityCheck.source`, and the checksum are list in file `IntegrityCheck.md5sum`. If you change those check target or modify target files, remember to manually update file list and its correctly md5sum hash before running check.

### LDAP Client Tntegration Test 
#### Using docker
```shell=
ex. Account / password:  sthost01 / PWDhostst01

// Create container
docker run -d -P --rm --name test registry.twcc.ai/ngc/nvidia/ubuntu-v1:latest
docker exec -ti test bash

// Check ldap server connectivity
getent passwd sthost01
su ${ldapuser}
exit

// ssh by ldap user
ssh ${ldapuser}@localhost -p ${22forword_port}

// delete container
docker stop test
```

#### Using kubernetes
```shell=
kubectl create -f ldap-ssh.yaml
```

## Deploy

```shell
// Push new container
docker push registry.twcc.ai/ngc/nvidia/ubuntu-v1:latest
```