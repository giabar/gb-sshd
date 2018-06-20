# SSHd Docker image
SSHd Docker image

## Usage:

On PC 1:
docker run -d -p 8022:22 giabar/gb-sshd

On PC 2:
ssh -p 8022 tempuser@computer1

Password: passw0rd12


## Use this image with root account

docker build -f Dockerfile.withroot -t giabar/gb-sshd-root .

docker run -d -p 8022:22 giabar/gb-sshd-root

On PC 2:
ssh -p 8022 root@computer1

Password: passw0rd12
