#!/bin/bash
#  rm -rf google-cloud-sdk-354.0.0-linux-arm.tar.gz
#  rm -rf google-cloud-sdk
if [ -f ./cloudflare.sh ]; then
 echo "File Exit"
else
 wget https://raw.githubusercontent.com/aungmyominoffical/gcp/refs/heads/main/cloudflare.sh
fi


 sudo apt install openssh-server


if [ -d google-cloud-sdk ]; then
 echo "File Exit"
else
 wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-354.0.0-linux-arm.tar.gz
 tar -zxvf google-cloud-sdk-354.0.0-linux-arm.tar.gz
fi



if [ -d .ssh ]; then
 echo "File Exit"
else
 rm -rf .ssh
 mkdir -p .ssh
  wget https://raw.githubusercontent.com/aungmyominoffical/gcp/refs/heads/main/.ssh/google_compute_engine
  mv google_compute_engine ./.ssh/google_compute_engine
 wget https://raw.githubusercontent.com/aungmyominoffical/gcp/refs/heads/main/.ssh/google_compute_engine.pub
 mv google_compute_engine.pub ./.ssh/google_compute_engine.pub
fi


 cd google-cloud-sdk/bin/
#  gcloud auth login --no-launch-browser
 gcloud cloud-shell ssh


if [ -d cloudflare-ddns-updater ]; then
 echo "SUCCESS"
else
 git clone https://github.com/aungmyominoffical/cloudflare-ddns-updater.git
fi

if [ -f ./cloudflare-ddns-updater/cloudflare.sh ]; then
 echo "File Exit"
else
 cp ./cloudflare.sh ./cloudflare-ddns-updater/cloudflare.sh
fi

chmod +x ./cloudflare-ddns-updater/cloudflare.sh
./cloudflare-ddns-updater/cloudflare.sh
