#!/bin/bash

current_dir=$(pwd)

bucket_name="state"

backend_config="prefix=terraform/dev/${current_dir##*/}"

terraform init -backend-config="$backend_config"

