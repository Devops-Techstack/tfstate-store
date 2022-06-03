terraform {
  # Terraform 0.15 or later is required for:
  # * the -raw flag on `terraform output`.
  # * the nonsensitive function
  required_version = ">= 1.0"
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.40"
    }
  }
    backend "s3" {
    bucket                      = "tfstatefile"
    region                      = "us-south"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = false
    endpoint                    = "s3.us-south.cloud-object-storage.appdomain.cloud"
  }
}

# bucket is the bucket name where to store tfstate file
# region is our cos bucket region in which its created
# setting skip_region_validation,skip_credentials_validation,skip_metadata_api_check to true disable call to specific s3 backend
# endpoint is cos endpoint which we can see in our bucket detail

#Three more param are there that we will pass on go using terraform init command.
# key is the name with which tfstate will persist in bucket
# access_key, secret_key are from the HMAC sub-section of the credentials.
