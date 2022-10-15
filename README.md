# Infrastructure as code using Terraform

## To set up networking and other aws resources: 

```
cd main
```

- Change variables in terraform.tfvars

```
terraform init
terraform plan
terraform apply
```

## For setting up the cluster:

```
cd cluster
export AWS_PROFILE=kops_user

bash create_cluster.sh [-n cluster_name] [-v vpc_id] [-b bucket_name] [-c new-key-path] [-e existing-public-key-path] [-s public-subnets] [-p private subnets]
```
This will generate tf file into the current folder, to apply the cluster resources:

```
terraform init
terraform plan
terraform apply
```

## Validating cluster:

```
kops validate cluster --state=s3://<BUCKET_NAME> --name=<CLUSTER_NAME> --wait 10m
```
