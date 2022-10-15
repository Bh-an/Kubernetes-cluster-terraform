# iac

## Infrastructure: 

```
cd main
```

- Change variables in terraform.tfvars

```
terraform init
terraform plan
terraform apply
```

## Cluster:

```
cd cluster
export AWS_PROFILE=kops_user
bash create_cluster.sh [-n cluster_name] [-v vpc_id] [-b bucket_name] [-c new-key-path] [-e existing-public-key-path]
```
