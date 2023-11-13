#! /bin/bash
# create bucket for backend state

project_id="nice-beanbag-402218"
gcp_bucket_name="tf-state-gcp-example-three-tier-architecture"

gcloud services enable storage.googleapis.com
gsutil mb -p $project_id -l us-central1 -b on gs://$gcp_bucket_name
gsutil versioning set on gs://$gcp_bucket_name
