#!/bin/bash

CLOUD="aws"
MASTER_ZONES="us-east-1a,us-east-1b,us-east-1c"
ZONES="us-east-1a,us-east-1b,us-east-1c"
BUCKET_NAME="s3://terraform-kops-g1"
NODE_COUNT=3
NODE_SIZE="t3.large"
MASTER_SIZE="t3.large"
SSH_PUB_KEY_LOCATION="~/CSYE7125/id_rsa.pub"

while getopts 'n:b:c:e:v:s:' OPTION; do
  case "$OPTION" in
    n)
      CLUSTER_NAME="$OPTARG"
      echo "Cluster name: $CLUSTER_NAME"
      ;;
    b)
      BUCKET="$OPTARG"
      BUCKET_NAME="s3://$BUCKET"
      echo "Bucket: $BUCKET_NAME"
      ;;
    c)
      SSH_KEY_LOCATION="$OPTARG"
      ssh-keygen -f $SSH_KEY_LOCATION -q -N ""
      SSH_PUB_KEY_LOCATION="$SSH_KEY_LOCATION.pub"
      echo "Path to ssh-key: $SSH_PUB_KEY_LOCATION"
      ;;
    e)
      SSH_PUB_KEY_LOCATION="$OPTARG"
      echo "Path to ssh-key: $SSH_PUB_KEY_LOCATION"
      ;;
    v)
      VPC="$OPTARG"
      echo "VPC ID: $VPC"
      ;;
    s)
      SUBNETS="$OPTARG"
      echo "SUBNETS: $SUBNETS"
      ;;
    ?)
      echo "script usage: create_cluster [-c NEW_KEY_PATH] [-n CLUSTER_NAME] [-e EXISTING_KEY_PATH] [-b BUCKET_NAME] [-v VPC_ID] [-s SUBNET_IDS]" >&2
      exit 1
      ;;
  esac

done

kops create cluster \
--kubernetes-version="1.20.0" \
--name  ${CLUSTER_NAME} \
--cloud=${CLOUD} \
--master-zones=${MASTER_ZONES} \
--zones=${ZONES} \
--state ${BUCKET_NAME} \
--node-count=${NODE_COUNT} \
--topology private \
--node-size=${NODE_SIZE} \
--master-size=${MASTER_SIZE} \
--bastion="true" \
--ssh-public-key=${SSH_PUB_KEY_LOCATION} \
--vpc=${VPC} \
--subnets=${SUBNETS} \
--utility-subnets=${SUBNETS} \
--networking amazonvpc \
--out=. \
--target=terraform

echo "Bastion DNS Name:"
echo $(aws elb --region us-east-1 --output=table describe-load-balancers|grep DNSName.\*bastion|awk '{print $4}')

#  bash ../cluster/create_cluster.sh -n kops.prd.aws.applicationbhan.me -e ~/awsnewkey.pub -v vpc-022fe7d73ed98b002 -s subnet-055eef2650a320cb4,subnet-0903c7967c6387123,subnet-0a7f83cf4ce1b81b4