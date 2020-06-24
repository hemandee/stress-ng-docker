# stress-ng-docker

Small Docker image build of stress-ng , see Dockerfile for build information

docker run hande007/stress-ng  --verbose --cpu 1 --vm-keep --vm-bytes 512M -t 60s --vm 1 