locals {
  bastion_autoscaling_group_ids = [aws_autoscaling_group.bastions-kops-prd-aws-applicationbhan-me.id]
  bastion_security_group_ids    = [aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id]
  bastions_role_arn             = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.arn
  bastions_role_name            = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.name
  cluster_name                  = "kops.prd.aws.applicationbhan.me"
  master_autoscaling_group_ids  = [aws_autoscaling_group.master-us-east-1a-masters-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1b-masters-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1c-masters-kops-prd-aws-applicationbhan-me.id]
  master_security_group_ids     = [aws_security_group.masters-kops-prd-aws-applicationbhan-me.id]
  masters_role_arn              = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.arn
  masters_role_name             = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.name
  node_autoscaling_group_ids    = [aws_autoscaling_group.nodes-us-east-1a-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1b-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1c-kops-prd-aws-applicationbhan-me.id]
  node_security_group_ids       = [aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id]
  node_subnet_ids               = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
  nodes_role_arn                = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.arn
  nodes_role_name               = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.name
  region                        = "us-east-1"
  subnet_ids                    = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
  subnet_us-east-1a_id          = "subnet-055eef2650a320cb4"
  subnet_us-east-1b_id          = "subnet-0903c7967c6387123"
  subnet_us-east-1c_id          = "subnet-0a7f83cf4ce1b81b4"
  subnet_utility-us-east-1a_id  = "subnet-055eef2650a320cb4"
  subnet_utility-us-east-1b_id  = "subnet-0903c7967c6387123"
  subnet_utility-us-east-1c_id  = "subnet-0a7f83cf4ce1b81b4"
  vpc_id                        = "vpc-022fe7d73ed98b002"
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-kops-prd-aws-applicationbhan-me.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.name
}

output "cluster_name" {
  value = "kops.prd.aws.applicationbhan.me"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1b-masters-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1c-masters-kops-prd-aws-applicationbhan-me.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-kops-prd-aws-applicationbhan-me.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1b-kops-prd-aws-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1c-kops-prd-aws-applicationbhan-me.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id]
}

output "node_subnet_ids" {
  value = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.name
}

output "region" {
  value = "us-east-1"
}

output "subnet_ids" {
  value = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
}

output "subnet_us-east-1a_id" {
  value = "subnet-055eef2650a320cb4"
}

output "subnet_us-east-1b_id" {
  value = "subnet-0903c7967c6387123"
}

output "subnet_us-east-1c_id" {
  value = "subnet-0a7f83cf4ce1b81b4"
}

output "subnet_utility-us-east-1a_id" {
  value = "subnet-055eef2650a320cb4"
}

output "subnet_utility-us-east-1b_id" {
  value = "subnet-0903c7967c6387123"
}

output "subnet_utility-us-east-1c_id" {
  value = "subnet-0a7f83cf4ce1b81b4"
}

output "vpc_id" {
  value = "vpc-022fe7d73ed98b002"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.bastions-kops-prd-aws-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.bastion-kops-prd-aws-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/bastion"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "bastions"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1a-masters-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1a-masters-kops-prd-aws-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prd-aws-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1a"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-055eef2650a320cb4"]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1b-masters-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1b-masters-kops-prd-aws-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prd-aws-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1b"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0903c7967c6387123"]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1c-masters-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1c-masters-kops-prd-aws-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prd-aws-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1c"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "master"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/master"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "master-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0a7f83cf4ce1b81b4"]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1a-kops-prd-aws-applicationbhan-me.latest_version
  }
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1a"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1a"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-055eef2650a320cb4"]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1b-kops-prd-aws-applicationbhan-me.latest_version
  }
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1b"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1b"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0903c7967c6387123"]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-kops-prd-aws-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-kops-prd-aws-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1c-kops-prd-aws-applicationbhan-me.latest_version
  }
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1c"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"
    propagate_at_launch = true
    value               = "node"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/role/node"
    propagate_at_launch = true
    value               = "1"
  }
  tag {
    key                 = "kops.k8s.io/instancegroup"
    propagate_at_launch = true
    value               = "nodes-us-east-1c"
  }
  tag {
    key                 = "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0a7f83cf4ce1b81b4"]
}

resource "aws_ebs_volume" "a-etcd-events-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "a.etcd-events.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/events"                                    = "a/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "a.etcd-main.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/main"                                      = "a/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-events-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "b.etcd-events.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/events"                                    = "b/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-main-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "b.etcd-main.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/main"                                      = "b/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-events-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "c.etcd-events.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/events"                                    = "c/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-main-kops-prd-aws-applicationbhan-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "c.etcd-main.kops.prd.aws.applicationbhan.me"
    "k8s.io/etcd/main"                                      = "c/a,b,c"
    "k8s.io/role/master"                                    = "1"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_elb" "api-kops-prd-aws-applicationbhan-me" {
  cross_zone_load_balancing = false
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "SSL:443"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }
  name            = "api-kops-prd-aws-applicat-g02jk6"
  security_groups = [aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id]
  subnets         = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "api.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_elb" "bastion-kops-prd-aws-applicationbhan-me" {
  health_check {
    healthy_threshold   = 2
    interval            = 10
    target              = "TCP:22"
    timeout             = 5
    unhealthy_threshold = 2
  }
  idle_timeout = 300
  listener {
    instance_port     = 22
    instance_protocol = "TCP"
    lb_port           = 22
    lb_protocol       = "TCP"
  }
  name            = "bastion-kops-prd-aws-appl-5o6p3s"
  security_groups = [aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id]
  subnets         = ["subnet-055eef2650a320cb4", "subnet-0903c7967c6387123", "subnet-0a7f83cf4ce1b81b4"]
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "bastion.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kops-prd-aws-applicationbhan-me" {
  name = "bastions.kops.prd.aws.applicationbhan.me"
  role = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "bastions.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kops-prd-aws-applicationbhan-me" {
  name = "masters.kops.prd.aws.applicationbhan.me"
  role = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "masters.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-kops-prd-aws-applicationbhan-me" {
  name = "nodes.kops.prd.aws.applicationbhan.me"
  role = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "nodes.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "bastions-kops-prd-aws-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.kops.prd.aws.applicationbhan.me_policy")
  name               = "bastions.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "bastions.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "masters-kops-prd-aws-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.kops.prd.aws.applicationbhan.me_policy")
  name               = "masters.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "masters.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "nodes-kops-prd-aws-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.kops.prd.aws.applicationbhan.me_policy")
  name               = "nodes.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "nodes.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-kops-prd-aws-applicationbhan-me" {
  name   = "bastions.kops.prd.aws.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.kops.prd.aws.applicationbhan.me_policy")
  role   = aws_iam_role.bastions-kops-prd-aws-applicationbhan-me.name
}

resource "aws_iam_role_policy" "masters-kops-prd-aws-applicationbhan-me" {
  name   = "masters.kops.prd.aws.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.kops.prd.aws.applicationbhan.me_policy")
  role   = aws_iam_role.masters-kops-prd-aws-applicationbhan-me.name
}

resource "aws_iam_role_policy" "nodes-kops-prd-aws-applicationbhan-me" {
  name   = "nodes.kops.prd.aws.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.kops.prd.aws.applicationbhan.me_policy")
  role   = aws_iam_role.nodes-kops-prd-aws-applicationbhan-me.name
}

resource "aws_key_pair" "kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2" {
  key_name   = "kubernetes.kops.prd.aws.applicationbhan.me-c2:e8:15:b8:02:58:95:12:23:7f:84:13:d7:a4:b2:c2"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.kops.prd.aws.applicationbhan.me-c2e815b802589512237f8413d7a4b2c2_public_key")
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
}

resource "aws_launch_template" "bastions-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 32
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.bastions-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "bastions.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "bastions.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                       = "bastions.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
  }
}

resource "aws_launch_template" "master-us-east-1a-masters-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1a.masters.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1a.masters.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_launch_template" "master-us-east-1b-masters-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1b.masters.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1b.masters.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_launch_template" "master-us-east-1c-masters-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 64
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.masters-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1c.masters.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                                                 = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1c.masters.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1a.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1b.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-kops-prd-aws-applicationbhan-me" {
  block_device_mappings {
    device_name = "/dev/sda1"
    ebs {
      delete_on_termination = true
      encrypted             = true
      iops                  = 3000
      throughput            = 125
      volume_size           = 128
      volume_type           = "gp3"
    }
  }
  iam_instance_profile {
    name = aws_iam_instance_profile.nodes-kops-prd-aws-applicationbhan-me.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.large"
  key_name      = aws_key_pair.kubernetes-kops-prd-aws-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "optional"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prd.aws.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1c.kops.prd.aws.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me"                      = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.kops.prd.aws.applicationbhan.me_user_data")
}

resource "aws_route53_record" "api-kops-prd-aws-applicationbhan-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-kops-prd-aws-applicationbhan-me.dns_name
    zone_id                = aws_elb.api-kops-prd-aws-applicationbhan-me.zone_id
  }
  name    = "api.kops.prd.aws.applicationbhan.me"
  type    = "A"
  zone_id = "/hostedzone/Z0326594D6QLY82KU1ZW"
}

resource "aws_route53_record" "bastion-kops-prd-aws-applicationbhan-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-kops-prd-aws-applicationbhan-me.dns_name
    zone_id                = aws_elb.bastion-kops-prd-aws-applicationbhan-me.zone_id
  }
  name    = "bastion.kops.prd.aws.applicationbhan.me"
  type    = "A"
  zone_id = "/hostedzone/Z0326594D6QLY82KU1ZW"
}

resource "aws_s3_bucket_object" "cluster-completed-spec" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_cluster-completed.spec_content")
  key                    = "kops.prd.aws.applicationbhan.me/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "etcd-cluster-spec-events" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_etcd-cluster-spec-events_content")
  key                    = "kops.prd.aws.applicationbhan.me/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "etcd-cluster-spec-main" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_etcd-cluster-spec-main_content")
  key                    = "kops.prd.aws.applicationbhan.me/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-bootstrap" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-bootstrap_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-core-addons-k8s-io" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-core.addons.k8s.io_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/core.addons.k8s.io/v1.4.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-limit-range-addons-k8s-io" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-limit-range.addons.k8s.io_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-networking-amazon-vpc-routed-eni-k8s-1-16" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-networking.amazon-vpc-routed-eni-k8s-1.16_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/networking.amazon-vpc-routed-eni/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prd-aws-applicationbhan-me-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prd.aws.applicationbhan.me-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key                    = "kops.prd.aws.applicationbhan.me/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-version-txt" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops-version.txt_content")
  key                    = "kops.prd.aws.applicationbhan.me/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-etcdmanager-events" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-etcdmanager-events_content")
  key                    = "kops.prd.aws.applicationbhan.me/manifests/etcd/events.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-etcdmanager-main" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-etcdmanager-main_content")
  key                    = "kops.prd.aws.applicationbhan.me/manifests/etcd/main.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "kops.prd.aws.applicationbhan.me/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1a" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1a_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/master/master-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1b" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1b_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/master/master-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1c" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1c_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/master/master-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1a" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1a_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1b" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1b_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1c" {
  bucket                 = "bhan-csye7125-kops"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1c_content")
  key                    = "kops.prd.aws.applicationbhan.me/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_security_group" "api-elb-kops-prd-aws-applicationbhan-me" {
  description = "Security group for api ELB"
  name        = "api-elb.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "api-elb.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-022fe7d73ed98b002"
}

resource "aws_security_group" "bastion-elb-kops-prd-aws-applicationbhan-me" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "bastion-elb.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-022fe7d73ed98b002"
}

resource "aws_security_group" "bastion-kops-prd-aws-applicationbhan-me" {
  description = "Security group for bastion"
  name        = "bastion.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "bastion.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-022fe7d73ed98b002"
}

resource "aws_security_group" "masters-kops-prd-aws-applicationbhan-me" {
  description = "Security group for masters"
  name        = "masters.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "masters.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-022fe7d73ed98b002"
}

resource "aws_security_group" "nodes-kops-prd-aws-applicationbhan-me" {
  description = "Security group for nodes"
  name        = "nodes.kops.prd.aws.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                     = "kops.prd.aws.applicationbhan.me"
    "Name"                                                  = "nodes.kops.prd.aws.applicationbhan.me"
    "kubernetes.io/cluster/kops.prd.aws.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-022fe7d73ed98b002"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-kops-prd-aws-applicationbhan-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-kops-prd-aws-applicationbhan-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-kops-prd-aws-applicationbhan-me" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-kops-prd-aws-applicationbhan-me" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-kops-prd-aws-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-kops-prd-aws-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prd-aws-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prd-aws-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prd-aws-applicationbhan-me-ingress-tcp-22to22-bastion-kops-prd-aws-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-elb-kops-prd-aws-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-prd-aws-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-prd-aws-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-prd-aws-applicationbhan-me-ingress-tcp-22to22-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-prd-aws-applicationbhan-me-ingress-tcp-22to22-nodes-kops-prd-aws-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-kops-prd-aws-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-prd-aws-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-prd-aws-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-prd-aws-applicationbhan-me-ingress-all-0to0-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-prd-aws-applicationbhan-me-ingress-all-0to0-nodes-kops-prd-aws-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-all-0to0-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-all-0to0-nodes-kops-prd-aws-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-tcp-1to2379-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-tcp-2382to4000-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-tcp-4003to65535-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prd-aws-applicationbhan-me-ingress-udp-1to65535-masters-kops-prd-aws-applicationbhan-me" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prd-aws-applicationbhan-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prd-aws-applicationbhan-me.id
  source_security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-kops-prd-aws-applicationbhan-me.id
  to_port           = -1
  type              = "ingress"
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 3.59.0"
    }
  }
}
