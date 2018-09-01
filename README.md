# SSHd Docker image
SSHd Docker image

## Usage:

On remote machine:
```
docker run -d -p 8022:22 giabar/gb-sshd
```

On your machine:
```
ssh -p 8022 tempuser@remotemachine
```
Password: passw0rd12


## Use this image with root account

On remote machine:
```
docker build -f Dockerfile.withroot -t giabar/gb-sshd-root .

docker run -d -p 8022:22 giabar/gb-sshd-root
```

On your machine:
```
ssh -p 8022 root@remotemachine
```
Password: passw0rd12
