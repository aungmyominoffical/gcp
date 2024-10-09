#!/bin/bash
 wget https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-354.0.0-linux-arm.tar.gz
 tar -zxvf google-cloud-sdk-354.0.0-linux-arm.tar.gz
 wget https://raw.githubusercontent.com/aungmyominoffical/gcp/refs/heads/main/.ssh/google_compute_engine
 wget https://raw.githubusercontent.com/aungmyominoffical/gcp/refs/heads/main/.ssh/google_compute_engine.pub
 mkdir -p .ssh
 mv google_compute_engine.pub ./.ssh/google_compute_engine.pub
 mv google_compute_engine.pub ./.ssh/google_compute_engine
 # cd google-cloud-sdk/bin/
