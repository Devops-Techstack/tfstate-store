# tfstate-store
This repo handle storing tfstate file to COS/S3

Commands to execute:
    terraform init  -backend-config="key=""demo.tfstate" -backend-config="access_key=${ACCESS_KEY}" -backend-config="secret_key=${SECRET_KEY}"
    terraform plan -input=false
    terraform apply -input=false -auto-approve
