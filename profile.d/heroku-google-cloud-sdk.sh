#!/usr/bin/env bash

export PATH="/app/google-cloud-sdk/bin:$PATH"

if [ -z $GCP_CREDENTIALS ]; then
  echo "GCP_CREDENTIALS env var not set, so skipping gcloud auth"
else
  echo "$GCP_CREDENTIALS" > /app/google-credentials.json
  gcloud auth activate-service-account --key-file /app/google-credentials.json
fi