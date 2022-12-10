locals {
  bastion_autoscaling_group_ids = [aws_autoscaling_group.bastions-kops-prod-applicationbhan-me.id]
  bastion_security_group_ids    = [aws_security_group.bastion-kops-prod-applicationbhan-me.id]
  bastions_role_arn             = aws_iam_role.bastions-kops-prod-applicationbhan-me.arn
  bastions_role_name            = aws_iam_role.bastions-kops-prod-applicationbhan-me.name
  cluster_name                  = "kops.prod.applicationbhan.me"
  master_autoscaling_group_ids  = [aws_autoscaling_group.master-us-east-1a-masters-kops-prod-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1b-masters-kops-prod-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1c-masters-kops-prod-applicationbhan-me.id]
  master_security_group_ids     = [aws_security_group.masters-kops-prod-applicationbhan-me.id]
  masters_role_arn              = aws_iam_role.masters-kops-prod-applicationbhan-me.arn
  masters_role_name             = aws_iam_role.masters-kops-prod-applicationbhan-me.name
  node_autoscaling_group_ids    = [aws_autoscaling_group.nodes-us-east-1a-kops-prod-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1b-kops-prod-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1c-kops-prod-applicationbhan-me.id]
  node_security_group_ids       = [aws_security_group.nodes-kops-prod-applicationbhan-me.id]
  node_subnet_ids               = ["subnet-013fc46d2f1c14e20", "subnet-07b56ccc1d7b93250", "subnet-0fe0b7cb90738f6a8"]
  nodes_role_arn                = aws_iam_role.nodes-kops-prod-applicationbhan-me.arn
  nodes_role_name               = aws_iam_role.nodes-kops-prod-applicationbhan-me.name
  region                        = "us-east-1"
  subnet_ids                    = ["subnet-013fc46d2f1c14e20", "subnet-01439fd324af1a426", "subnet-045a8ad4e3fb49517", "subnet-07b56ccc1d7b93250", "subnet-0810aaa6af7c009f8", "subnet-0fe0b7cb90738f6a8"]
  subnet_us-east-1a_id          = "subnet-013fc46d2f1c14e20"
  subnet_us-east-1b_id          = "subnet-07b56ccc1d7b93250"
  subnet_us-east-1c_id          = "subnet-0fe0b7cb90738f6a8"
  subnet_utility-us-east-1a_id  = "subnet-01439fd324af1a426"
  subnet_utility-us-east-1b_id  = "subnet-0810aaa6af7c009f8"
  subnet_utility-us-east-1c_id  = "subnet-045a8ad4e3fb49517"
  vpc_id                        = "vpc-08c43d47e98f821b0"
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-kops-prod-applicationbhan-me.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-kops-prod-applicationbhan-me.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-kops-prod-applicationbhan-me.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-kops-prod-applicationbhan-me.name
}

output "cluster_name" {
  value = "kops.prod.applicationbhan.me"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-kops-prod-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1b-masters-kops-prod-applicationbhan-me.id, aws_autoscaling_group.master-us-east-1c-masters-kops-prod-applicationbhan-me.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-kops-prod-applicationbhan-me.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-kops-prod-applicationbhan-me.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-kops-prod-applicationbhan-me.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-kops-prod-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1b-kops-prod-applicationbhan-me.id, aws_autoscaling_group.nodes-us-east-1c-kops-prod-applicationbhan-me.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-kops-prod-applicationbhan-me.id]
}

output "node_subnet_ids" {
  value = ["subnet-013fc46d2f1c14e20", "subnet-07b56ccc1d7b93250", "subnet-0fe0b7cb90738f6a8"]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-kops-prod-applicationbhan-me.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-kops-prod-applicationbhan-me.name
}

output "region" {
  value = "us-east-1"
}

output "subnet_ids" {
  value = ["subnet-013fc46d2f1c14e20", "subnet-01439fd324af1a426", "subnet-045a8ad4e3fb49517", "subnet-07b56ccc1d7b93250", "subnet-0810aaa6af7c009f8", "subnet-0fe0b7cb90738f6a8"]
}

output "subnet_us-east-1a_id" {
  value = "subnet-013fc46d2f1c14e20"
}

output "subnet_us-east-1b_id" {
  value = "subnet-07b56ccc1d7b93250"
}

output "subnet_us-east-1c_id" {
  value = "subnet-0fe0b7cb90738f6a8"
}

output "subnet_utility-us-east-1a_id" {
  value = "subnet-01439fd324af1a426"
}

output "subnet_utility-us-east-1b_id" {
  value = "subnet-0810aaa6af7c009f8"
}

output "subnet_utility-us-east-1c_id" {
  value = "subnet-045a8ad4e3fb49517"
}

output "vpc_id" {
  value = "vpc-08c43d47e98f821b0"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-kops-prod-applicationbhan-me.id
    version = aws_launch_template.bastions-kops-prod-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.bastion-kops-prod-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fc46d2f1c14e20", "subnet-07b56ccc1d7b93250", "subnet-0fe0b7cb90738f6a8"]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1a-masters-kops-prod-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1a-masters-kops-prod-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prod-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fc46d2f1c14e20"]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1b-masters-kops-prod-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1b-masters-kops-prod-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prod-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-07b56ccc1d7b93250"]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1c-masters-kops-prod-applicationbhan-me.id
    version = aws_launch_template.master-us-east-1c-masters-kops-prod-applicationbhan-me.latest_version
  }
  load_balancers        = [aws_elb.api-kops-prod-applicationbhan-me.id]
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0fe0b7cb90738f6a8"]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-kops-prod-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1a-kops-prod-applicationbhan-me.latest_version
  }
  max_size              = 2
  metrics_granularity   = "1Minute"
  min_size              = 2
  name                  = "nodes-us-east-1a.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fc46d2f1c14e20"]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-kops-prod-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1b-kops-prod-applicationbhan-me.latest_version
  }
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-07b56ccc1d7b93250"]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-kops-prod-applicationbhan-me" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-kops-prod-applicationbhan-me.id
    version = aws_launch_template.nodes-us-east-1c-kops-prod-applicationbhan-me.latest_version
  }
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1c.kops.prod.applicationbhan.me"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.prod.applicationbhan.me"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.kops.prod.applicationbhan.me"
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
    key                 = "kubernetes.io/cluster/kops.prod.applicationbhan.me"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-0fe0b7cb90738f6a8"]
}

resource "aws_ebs_volume" "a-etcd-events-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "a.etcd-events.kops.prod.applicationbhan.me"
    "k8s.io/etcd/events"                                 = "a/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "a.etcd-main.kops.prod.applicationbhan.me"
    "k8s.io/etcd/main"                                   = "a/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-events-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "b.etcd-events.kops.prod.applicationbhan.me"
    "k8s.io/etcd/events"                                 = "b/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-main-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "b.etcd-main.kops.prod.applicationbhan.me"
    "k8s.io/etcd/main"                                   = "b/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-events-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "c.etcd-events.kops.prod.applicationbhan.me"
    "k8s.io/etcd/events"                                 = "c/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-main-kops-prod-applicationbhan-me" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "c.etcd-main.kops.prod.applicationbhan.me"
    "k8s.io/etcd/main"                                   = "c/a,b,c"
    "k8s.io/role/master"                                 = "1"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_elb" "api-kops-prod-applicationbhan-me" {
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
  name            = "api-kops-prod-application-kr1fe3"
  security_groups = [aws_security_group.api-elb-kops-prod-applicationbhan-me.id]
  subnets         = ["subnet-01439fd324af1a426", "subnet-045a8ad4e3fb49517", "subnet-0810aaa6af7c009f8"]
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "api.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_elb" "bastion-kops-prod-applicationbhan-me" {
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
  name            = "bastion-kops-prod-applica-5o5opd"
  security_groups = [aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id]
  subnets         = ["subnet-01439fd324af1a426", "subnet-045a8ad4e3fb49517", "subnet-0810aaa6af7c009f8"]
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "bastion.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kops-prod-applicationbhan-me" {
  name = "bastions.kops.prod.applicationbhan.me"
  role = aws_iam_role.bastions-kops-prod-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "bastions.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kops-prod-applicationbhan-me" {
  name = "masters.kops.prod.applicationbhan.me"
  role = aws_iam_role.masters-kops-prod-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "masters.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-kops-prod-applicationbhan-me" {
  name = "nodes.kops.prod.applicationbhan.me"
  role = aws_iam_role.nodes-kops-prod-applicationbhan-me.name
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "nodes.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "bastions-kops-prod-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.kops.prod.applicationbhan.me_policy")
  name               = "bastions.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "bastions.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "masters-kops-prod-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.kops.prod.applicationbhan.me_policy")
  name               = "masters.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "masters.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role" "nodes-kops-prod-applicationbhan-me" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.kops.prod.applicationbhan.me_policy")
  name               = "nodes.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "nodes.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-kops-prod-applicationbhan-me" {
  name   = "bastions.kops.prod.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.kops.prod.applicationbhan.me_policy")
  role   = aws_iam_role.bastions-kops-prod-applicationbhan-me.name
}

resource "aws_iam_role_policy" "masters-kops-prod-applicationbhan-me" {
  name   = "masters.kops.prod.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.kops.prod.applicationbhan.me_policy")
  role   = aws_iam_role.masters-kops-prod-applicationbhan-me.name
}

resource "aws_iam_role_policy" "nodes-kops-prod-applicationbhan-me" {
  name   = "nodes.kops.prod.applicationbhan.me"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.kops.prod.applicationbhan.me_policy")
  role   = aws_iam_role.nodes-kops-prod-applicationbhan-me.name
}

resource "aws_key_pair" "kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2" {
  key_name   = "kubernetes.kops.prod.applicationbhan.me-c2:e8:15:b8:02:58:95:12:23:7f:84:13:d7:a4:b2:c2"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.kops.prod.applicationbhan.me-c2e815b802589512237f8413d7a4b2c2_public_key")
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
}

resource "aws_launch_template" "bastions-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.bastions-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "bastions.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "bastions.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "bastions.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
    "Name"                                                                       = "bastions.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "bastions"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
  }
}

resource "aws_launch_template" "master-us-east-1a-masters-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.masters-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1a.masters.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1a"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1a.masters.kops.prod.applicationbhan.me_user_data")
}

resource "aws_launch_template" "master-us-east-1b-masters-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.masters-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1b.masters.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1b"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1b.masters.kops.prod.applicationbhan.me_user_data")
}

resource "aws_launch_template" "master-us-east-1c-masters-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.masters-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.prod.applicationbhan.me"
    "Name"                                                                                                  = "master-us-east-1c.masters.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"                               = "master-us-east-1c"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                                                    = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1c.masters.kops.prod.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.nodes-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "nodes-us-east-1a.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1a.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1a.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1a.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1a"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.kops.prod.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.nodes-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "nodes-us-east-1b.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1b.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1b.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1b.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1b"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.kops.prod.applicationbhan.me_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-kops-prod-applicationbhan-me" {
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
    name = aws_iam_instance_profile.nodes-kops-prod-applicationbhan-me.id
  }
  image_id      = "ami-0097e4945b2d15c30"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-prod-applicationbhan-me-c2e815b802589512237f8413d7a4b2c2.id
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
  name = "nodes-us-east-1c.kops.prod.applicationbhan.me"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-prod-applicationbhan-me.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1c.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
      "Name"                                                                       = "nodes-us-east-1c.kops.prod.applicationbhan.me"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.prod.applicationbhan.me"
    "Name"                                                                       = "nodes-us-east-1c.kops.prod.applicationbhan.me"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"    = "nodes-us-east-1c"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me"                         = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.kops.prod.applicationbhan.me_user_data")
}

resource "aws_route53_record" "api-kops-prod-applicationbhan-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-kops-prod-applicationbhan-me.dns_name
    zone_id                = aws_elb.api-kops-prod-applicationbhan-me.zone_id
  }
  name    = "api.kops.prod.applicationbhan.me"
  type    = "A"
  zone_id = "/hostedzone/Z09950323TS3UCO7BJWEZ"
}

resource "aws_route53_record" "bastion-kops-prod-applicationbhan-me" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-kops-prod-applicationbhan-me.dns_name
    zone_id                = aws_elb.bastion-kops-prod-applicationbhan-me.zone_id
  }
  name    = "bastion.kops.prod.applicationbhan.me"
  type    = "A"
  zone_id = "/hostedzone/Z09950323TS3UCO7BJWEZ"
}

resource "aws_s3_bucket_object" "cluster-completed-spec" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_cluster-completed.spec_content")
  key                    = "kops.prod.applicationbhan.me/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "etcd-cluster-spec-events" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_etcd-cluster-spec-events_content")
  key                    = "kops.prod.applicationbhan.me/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "etcd-cluster-spec-main" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_etcd-cluster-spec-main_content")
  key                    = "kops.prod.applicationbhan.me/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-bootstrap" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-bootstrap_content")
  key                    = "kops.prod.applicationbhan.me/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-core-addons-k8s-io" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-core.addons.k8s.io_content")
  key                    = "kops.prod.applicationbhan.me/addons/core.addons.k8s.io/v1.4.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.prod.applicationbhan.me/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.prod.applicationbhan.me/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "kops.prod.applicationbhan.me/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "kops.prod.applicationbhan.me/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-limit-range-addons-k8s-io" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-limit-range.addons.k8s.io_content")
  key                    = "kops.prod.applicationbhan.me/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-networking-amazon-vpc-routed-eni-k8s-1-16" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-networking.amazon-vpc-routed-eni-k8s-1.16_content")
  key                    = "kops.prod.applicationbhan.me/addons/networking.amazon-vpc-routed-eni/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-prod-applicationbhan-me-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops.prod.applicationbhan.me-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key                    = "kops.prod.applicationbhan.me/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "kops-version-txt" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_kops-version.txt_content")
  key                    = "kops.prod.applicationbhan.me/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-etcdmanager-events" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-etcdmanager-events_content")
  key                    = "kops.prod.applicationbhan.me/manifests/etcd/events.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-etcdmanager-main" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-etcdmanager-main_content")
  key                    = "kops.prod.applicationbhan.me/manifests/etcd/main.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "kops.prod.applicationbhan.me/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1a" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1a_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/master/master-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1b" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1b_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/master/master-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-master-us-east-1c" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-master-us-east-1c_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/master/master-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1a" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1a_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1b" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1b_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_bucket_object" "nodeupconfig-nodes-us-east-1c" {
  bucket                 = "kops-bhan-csye7125"
  content                = file("${path.module}/data/aws_s3_bucket_object_nodeupconfig-nodes-us-east-1c_content")
  key                    = "kops.prod.applicationbhan.me/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_security_group" "api-elb-kops-prod-applicationbhan-me" {
  description = "Security group for api ELB"
  name        = "api-elb.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "api-elb.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-08c43d47e98f821b0"
}

resource "aws_security_group" "bastion-elb-kops-prod-applicationbhan-me" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "bastion-elb.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-08c43d47e98f821b0"
}

resource "aws_security_group" "bastion-kops-prod-applicationbhan-me" {
  description = "Security group for bastion"
  name        = "bastion.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "bastion.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-08c43d47e98f821b0"
}

resource "aws_security_group" "masters-kops-prod-applicationbhan-me" {
  description = "Security group for masters"
  name        = "masters.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "masters.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-08c43d47e98f821b0"
}

resource "aws_security_group" "nodes-kops-prod-applicationbhan-me" {
  description = "Security group for nodes"
  name        = "nodes.kops.prod.applicationbhan.me"
  tags = {
    "KubernetesCluster"                                  = "kops.prod.applicationbhan.me"
    "Name"                                               = "nodes.kops.prod.applicationbhan.me"
    "kubernetes.io/cluster/kops.prod.applicationbhan.me" = "owned"
  }
  vpc_id = "vpc-08c43d47e98f821b0"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-kops-prod-applicationbhan-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-kops-prod-applicationbhan-me" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-kops-prod-applicationbhan-me" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-kops-prod-applicationbhan-me" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-kops-prod-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-kops-prod-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prod-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prod-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-prod-applicationbhan-me-ingress-tcp-22to22-bastion-kops-prod-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-elb-kops-prod-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-prod-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-prod-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-prod-applicationbhan-me-ingress-tcp-22to22-masters-kops-prod-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-kops-prod-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-prod-applicationbhan-me-ingress-tcp-22to22-nodes-kops-prod-applicationbhan-me" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.bastion-kops-prod-applicationbhan-me.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-prod-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-prod-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-prod-applicationbhan-me-ingress-all-0to0-masters-kops-prod-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.masters-kops-prod-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-prod-applicationbhan-me-ingress-all-0to0-nodes-kops-prod-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.masters-kops-prod-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-all-0to0-masters-kops-prod-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-all-0to0-nodes-kops-prod-applicationbhan-me" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-tcp-1to2379-masters-kops-prod-applicationbhan-me" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-tcp-2382to4000-masters-kops-prod-applicationbhan-me" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-tcp-4003to65535-masters-kops-prod-applicationbhan-me" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-prod-applicationbhan-me-ingress-udp-1to65535-masters-kops-prod-applicationbhan-me" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.nodes-kops-prod-applicationbhan-me.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-prod-applicationbhan-me.id
  source_security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-kops-prod-applicationbhan-me.id
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
