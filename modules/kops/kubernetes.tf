locals {
  bastion_autoscaling_group_ids     = [aws_autoscaling_group.bastions-kops-rajmehta-live.id]
  bastion_security_group_ids        = [aws_security_group.bastion-kops-rajmehta-live.id]
  bastions_role_arn                 = aws_iam_role.bastions-kops-rajmehta-live.arn
  bastions_role_name                = aws_iam_role.bastions-kops-rajmehta-live.name
  cluster_name                      = "kops.rajmehta.live"
  master_autoscaling_group_ids      = [aws_autoscaling_group.master-us-east-1a-masters-kops-rajmehta-live.id, aws_autoscaling_group.master-us-east-1b-masters-kops-rajmehta-live.id, aws_autoscaling_group.master-us-east-1c-masters-kops-rajmehta-live.id]
  master_security_group_ids         = [aws_security_group.masters-kops-rajmehta-live.id]
  masters_role_arn                  = aws_iam_role.masters-kops-rajmehta-live.arn
  masters_role_name                 = aws_iam_role.masters-kops-rajmehta-live.name
  node_autoscaling_group_ids        = [aws_autoscaling_group.nodes-us-east-1a-kops-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1b-kops-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1c-kops-rajmehta-live.id]
  node_security_group_ids           = [aws_security_group.nodes-kops-rajmehta-live.id]
  node_subnet_ids                   = [aws_subnet.us-east-1a-kops-rajmehta-live.id, aws_subnet.us-east-1b-kops-rajmehta-live.id, aws_subnet.us-east-1c-kops-rajmehta-live.id]
  nodes_role_arn                    = aws_iam_role.nodes-kops-rajmehta-live.arn
  nodes_role_name                   = aws_iam_role.nodes-kops-rajmehta-live.name
  region                            = "us-east-1"
  route_table_private-us-east-1a_id = aws_route_table.private-us-east-1a-kops-rajmehta-live.id
  route_table_private-us-east-1b_id = aws_route_table.private-us-east-1b-kops-rajmehta-live.id
  route_table_private-us-east-1c_id = aws_route_table.private-us-east-1c-kops-rajmehta-live.id
  route_table_public_id             = aws_route_table.kops-rajmehta-live.id
  subnet_us-east-1a_id              = aws_subnet.us-east-1a-kops-rajmehta-live.id
  subnet_us-east-1b_id              = aws_subnet.us-east-1b-kops-rajmehta-live.id
  subnet_us-east-1c_id              = aws_subnet.us-east-1c-kops-rajmehta-live.id
  subnet_utility-us-east-1a_id      = aws_subnet.utility-us-east-1a-kops-rajmehta-live.id
  subnet_utility-us-east-1b_id      = aws_subnet.utility-us-east-1b-kops-rajmehta-live.id
  subnet_utility-us-east-1c_id      = aws_subnet.utility-us-east-1c-kops-rajmehta-live.id
  vpc_cidr_block                    = aws_vpc.kops-rajmehta-live.cidr_block
  vpc_id                            = aws_vpc.kops-rajmehta-live.id
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-kops-rajmehta-live.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-kops-rajmehta-live.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-kops-rajmehta-live.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-kops-rajmehta-live.name
}

output "cluster_name" {
  value = "kops.rajmehta.live"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-kops-rajmehta-live.id, aws_autoscaling_group.master-us-east-1b-masters-kops-rajmehta-live.id, aws_autoscaling_group.master-us-east-1c-masters-kops-rajmehta-live.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-kops-rajmehta-live.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-kops-rajmehta-live.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-kops-rajmehta-live.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-kops-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1b-kops-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1c-kops-rajmehta-live.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-kops-rajmehta-live.id]
}

output "node_subnet_ids" {
  value = [aws_subnet.us-east-1a-kops-rajmehta-live.id, aws_subnet.us-east-1b-kops-rajmehta-live.id, aws_subnet.us-east-1c-kops-rajmehta-live.id]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-kops-rajmehta-live.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-kops-rajmehta-live.name
}

output "region" {
  value = "us-east-1"
}

output "route_table_private-us-east-1a_id" {
  value = aws_route_table.private-us-east-1a-kops-rajmehta-live.id
}

output "route_table_private-us-east-1b_id" {
  value = aws_route_table.private-us-east-1b-kops-rajmehta-live.id
}

output "route_table_private-us-east-1c_id" {
  value = aws_route_table.private-us-east-1c-kops-rajmehta-live.id
}

output "route_table_public_id" {
  value = aws_route_table.kops-rajmehta-live.id
}

output "subnet_us-east-1a_id" {
  value = aws_subnet.us-east-1a-kops-rajmehta-live.id
}

output "subnet_us-east-1b_id" {
  value = aws_subnet.us-east-1b-kops-rajmehta-live.id
}

output "subnet_us-east-1c_id" {
  value = aws_subnet.us-east-1c-kops-rajmehta-live.id
}

output "subnet_utility-us-east-1a_id" {
  value = aws_subnet.utility-us-east-1a-kops-rajmehta-live.id
}

output "subnet_utility-us-east-1b_id" {
  value = aws_subnet.utility-us-east-1b-kops-rajmehta-live.id
}

output "subnet_utility-us-east-1c_id" {
  value = aws_subnet.utility-us-east-1c-kops-rajmehta-live.id
}

output "vpc_cidr_block" {
  value = aws_vpc.kops-rajmehta-live.cidr_block
}

output "vpc_id" {
  value = aws_vpc.kops-rajmehta-live.id
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-kops-rajmehta-live.id
    version = aws_launch_template.bastions-kops-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.bastion-kops-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.kops.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-kops-rajmehta-live.id, aws_subnet.us-east-1b-kops-rajmehta-live.id, aws_subnet.us-east-1c-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1a-masters-kops-rajmehta-live.id
    version = aws_launch_template.master-us-east-1a-masters-kops-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.api-kops-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1a.masters.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.kops.rajmehta.live"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "master-us-east-1b-masters-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1b-masters-kops-rajmehta-live.id
    version = aws_launch_template.master-us-east-1b-masters-kops-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.api-kops-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1b.masters.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1b.masters.kops.rajmehta.live"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "master-us-east-1c-masters-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1c-masters-kops-rajmehta-live.id
    version = aws_launch_template.master-us-east-1c-masters-kops-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.api-kops-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1c.masters.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1c.masters.kops.rajmehta.live"
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"
    propagate_at_launch = true
    value               = ""
  }
  tag {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-kops-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1a-kops-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.kops.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1a-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-kops-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1b-kops-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1b.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.kops.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1b-kops-rajmehta-live.id]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-kops-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-kops-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1c-kops-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1c.kops.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.kops.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = [aws_subnet.us-east-1c-kops-rajmehta-live.id]
}

resource "aws_ebs_volume" "a-etcd-events-kops-rajmehta-live" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "a.etcd-events.kops.rajmehta.live"
    "k8s.io/etcd/events"                       = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-kops-rajmehta-live" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "a.etcd-main.kops.rajmehta.live"
    "k8s.io/etcd/main"                         = "a/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-events-kops-rajmehta-live" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "b.etcd-events.kops.rajmehta.live"
    "k8s.io/etcd/events"                       = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "b-etcd-main-kops-rajmehta-live" {
  availability_zone = "us-east-1b"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "b.etcd-main.kops.rajmehta.live"
    "k8s.io/etcd/main"                         = "b/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-events-kops-rajmehta-live" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "c.etcd-events.kops.rajmehta.live"
    "k8s.io/etcd/events"                       = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "c-etcd-main-kops-rajmehta-live" {
  availability_zone = "us-east-1c"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "c.etcd-main.kops.rajmehta.live"
    "k8s.io/etcd/main"                         = "c/a,b,c"
    "k8s.io/role/master"                       = "1"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_eip" "us-east-1a-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1a.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1b-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1b.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc = true
}

resource "aws_eip" "us-east-1c-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1c.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc = true
}

resource "aws_elb" "api-kops-rajmehta-live" {
  connection_draining         = true
  connection_draining_timeout = 300
  cross_zone_load_balancing   = false
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
  name            = "api-kops-rajmehta-live-86j19r"
  security_groups = [aws_security_group.api-elb-kops-rajmehta-live.id]
  subnets         = [aws_subnet.utility-us-east-1a-kops-rajmehta-live.id, aws_subnet.utility-us-east-1b-kops-rajmehta-live.id, aws_subnet.utility-us-east-1c-kops-rajmehta-live.id]
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "api.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_elb" "bastion-kops-rajmehta-live" {
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
  name            = "bastion-kops-rajmehta-liv-1epr81"
  security_groups = [aws_security_group.bastion-elb-kops-rajmehta-live.id]
  subnets         = [aws_subnet.utility-us-east-1a-kops-rajmehta-live.id, aws_subnet.utility-us-east-1b-kops-rajmehta-live.id, aws_subnet.utility-us-east-1c-kops-rajmehta-live.id]
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "bastion.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kops-rajmehta-live" {
  name = "bastions.kops.rajmehta.live"
  role = aws_iam_role.bastions-kops-rajmehta-live.name
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "bastions.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kops-rajmehta-live" {
  name = "masters.kops.rajmehta.live"
  role = aws_iam_role.masters-kops-rajmehta-live.name
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "masters.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-kops-rajmehta-live" {
  name = "nodes.kops.rajmehta.live"
  role = aws_iam_role.nodes-kops-rajmehta-live.name
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "nodes.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "bastions-kops-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.kops.rajmehta.live_policy")
  name               = "bastions.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "bastions.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "masters-kops-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.kops.rajmehta.live_policy")
  name               = "masters.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "masters.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "nodes-kops-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.kops.rajmehta.live_policy")
  name               = "nodes.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "nodes.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-kops-rajmehta-live" {
  name   = "bastions.kops.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.kops.rajmehta.live_policy")
  role   = aws_iam_role.bastions-kops-rajmehta-live.name
}

resource "aws_iam_role_policy" "masters-kops-rajmehta-live" {
  name   = "masters.kops.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.kops.rajmehta.live_policy")
  role   = aws_iam_role.masters-kops-rajmehta-live.name
}

resource "aws_iam_role_policy" "nodes-kops-rajmehta-live" {
  name   = "nodes.kops.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.kops.rajmehta.live_policy")
  role   = aws_iam_role.nodes-kops-rajmehta-live.name
}

resource "aws_internet_gateway" "kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_key_pair" "kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e" {
  key_name   = "kubernetes.kops.rajmehta.live-22:c5:5a:24:15:8f:ce:ab:f4:ff:ee:ce:5f:e7:78:9e"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.kops.rajmehta.live-22c55a24158fceabf4ffeece5fe7789e_public_key")
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_launch_template" "bastions-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.bastions-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "bastions.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "bastions.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "bastions.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.rajmehta.live"
    "Name"                                                                       = "bastions.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
  }
}

resource "aws_launch_template" "master-us-east-1a-masters-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.masters-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1a.masters.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
    "Name"                                                                                                  = "master-us-east-1a.masters.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
    "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1a.masters.kops.rajmehta.live_user_data")
}

resource "aws_launch_template" "master-us-east-1b-masters-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.masters-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1b.masters.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1b.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
    "Name"                                                                                                  = "master-us-east-1b.masters.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1b"
    "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1b.masters.kops.rajmehta.live_user_data")
}

resource "aws_launch_template" "master-us-east-1c-masters-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.masters-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 3
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "master-us-east-1c.masters.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1c.masters.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
      "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.rajmehta.live"
    "Name"                                                                                                  = "master-us-east-1c.masters.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1c"
    "kubernetes.io/cluster/kops.rajmehta.live"                                                              = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1c.masters.kops.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1a.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1a.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1a.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1a.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.kops.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1b.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1b.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1b.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1b.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.kops.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-kops-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t2.medium"
  key_name      = aws_key_pair.kubernetes-kops-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
  lifecycle {
    create_before_destroy = true
  }
  metadata_options {
    http_endpoint               = "enabled"
    http_protocol_ipv6          = "disabled"
    http_put_response_hop_limit = 1
    http_tokens                 = "required"
  }
  monitoring {
    enabled = false
  }
  name = "nodes-us-east-1c.kops.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1c.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1c.kops.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1c.kops.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/kops.rajmehta.live"                                   = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.kops.rajmehta.live_user_data")
}

resource "aws_nat_gateway" "us-east-1a-kops-rajmehta-live" {
  allocation_id = aws_eip.us-east-1a-kops-rajmehta-live.id
  subnet_id     = aws_subnet.utility-us-east-1a-kops-rajmehta-live.id
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1a.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1b-kops-rajmehta-live" {
  allocation_id = aws_eip.us-east-1b-kops-rajmehta-live.id
  subnet_id     = aws_subnet.utility-us-east-1b-kops-rajmehta-live.id
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1b.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_nat_gateway" "us-east-1c-kops-rajmehta-live" {
  allocation_id = aws_eip.us-east-1c-kops-rajmehta-live.id
  subnet_id     = aws_subnet.utility-us-east-1c-kops-rajmehta-live.id
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "us-east-1c.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_route" "route-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.kops-rajmehta-live.id
  route_table_id         = aws_route_table.kops-rajmehta-live.id
}

resource "aws_route" "route-__--0" {
  destination_ipv6_cidr_block = "::/0"
  gateway_id                  = aws_internet_gateway.kops-rajmehta-live.id
  route_table_id              = aws_route_table.kops-rajmehta-live.id
}

resource "aws_route" "route-private-us-east-1a-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1a-kops-rajmehta-live.id
  route_table_id         = aws_route_table.private-us-east-1a-kops-rajmehta-live.id
}

resource "aws_route" "route-private-us-east-1b-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1b-kops-rajmehta-live.id
  route_table_id         = aws_route_table.private-us-east-1b-kops-rajmehta-live.id
}

resource "aws_route" "route-private-us-east-1c-0-0-0-0--0" {
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = aws_nat_gateway.us-east-1c-kops-rajmehta-live.id
  route_table_id         = aws_route_table.private-us-east-1c-kops-rajmehta-live.id
}

resource "aws_route53_record" "api-kops-rajmehta-live" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-kops-rajmehta-live.dns_name
    zone_id                = aws_elb.api-kops-rajmehta-live.zone_id
  }
  name    = "api.kops.rajmehta.live"
  type    = "A"
  zone_id = "/hostedzone/Z071110838MODINKQMWMH"
}

resource "aws_route53_record" "bastion-kops-rajmehta-live" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-kops-rajmehta-live.dns_name
    zone_id                = aws_elb.bastion-kops-rajmehta-live.zone_id
  }
  name    = "bastion.kops.rajmehta.live"
  type    = "A"
  zone_id = "/hostedzone/Z071110838MODINKQMWMH"
}

resource "aws_route_table" "kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/kops/role"                  = "public"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_route_table" "private-us-east-1a-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "private-us-east-1a.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1a"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_route_table" "private-us-east-1b-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "private-us-east-1b.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1b"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_route_table" "private-us-east-1c-kops-rajmehta-live" {
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "private-us-east-1c.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/kops/role"                  = "private-us-east-1c"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_route_table_association" "private-us-east-1a-kops-rajmehta-live" {
  route_table_id = aws_route_table.private-us-east-1a-kops-rajmehta-live.id
  subnet_id      = aws_subnet.us-east-1a-kops-rajmehta-live.id
}

resource "aws_route_table_association" "private-us-east-1b-kops-rajmehta-live" {
  route_table_id = aws_route_table.private-us-east-1b-kops-rajmehta-live.id
  subnet_id      = aws_subnet.us-east-1b-kops-rajmehta-live.id
}

resource "aws_route_table_association" "private-us-east-1c-kops-rajmehta-live" {
  route_table_id = aws_route_table.private-us-east-1c-kops-rajmehta-live.id
  subnet_id      = aws_subnet.us-east-1c-kops-rajmehta-live.id
}

resource "aws_route_table_association" "utility-us-east-1a-kops-rajmehta-live" {
  route_table_id = aws_route_table.kops-rajmehta-live.id
  subnet_id      = aws_subnet.utility-us-east-1a-kops-rajmehta-live.id
}

resource "aws_route_table_association" "utility-us-east-1b-kops-rajmehta-live" {
  route_table_id = aws_route_table.kops-rajmehta-live.id
  subnet_id      = aws_subnet.utility-us-east-1b-kops-rajmehta-live.id
}

resource "aws_route_table_association" "utility-us-east-1c-kops-rajmehta-live" {
  route_table_id = aws_route_table.kops-rajmehta-live.id
  subnet_id      = aws_subnet.utility-us-east-1c-kops-rajmehta-live.id
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key                    = "kops.rajmehta.live/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key                    = "kops.rajmehta.live/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key                    = "kops.rajmehta.live/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-aws-cloud-controller-addons-k8s-io-k8s-1-18" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-aws-cloud-controller.addons.k8s.io-k8s-1.18_content")
  key                    = "kops.rajmehta.live/addons/aws-cloud-controller.addons.k8s.io/k8s-1.18.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-aws-ebs-csi-driver-addons-k8s-io-k8s-1-17" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-aws-ebs-csi-driver.addons.k8s.io-k8s-1.17_content")
  key                    = "kops.rajmehta.live/addons/aws-ebs-csi-driver.addons.k8s.io/k8s-1.17.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-bootstrap" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-bootstrap_content")
  key                    = "kops.rajmehta.live/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.rajmehta.live/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.rajmehta.live/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "kops.rajmehta.live/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "kops.rajmehta.live/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-leader-migration-rbac-addons-k8s-io-k8s-1-23" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-leader-migration.rbac.addons.k8s.io-k8s-1.23_content")
  key                    = "kops.rajmehta.live/addons/leader-migration.rbac.addons.k8s.io/k8s-1.23.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-limit-range-addons-k8s-io" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-limit-range.addons.k8s.io_content")
  key                    = "kops.rajmehta.live/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-networking-amazon-vpc-routed-eni-k8s-1-16" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-networking.amazon-vpc-routed-eni-k8s-1.16_content")
  key                    = "kops.rajmehta.live/addons/networking.amazon-vpc-routed-eni/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-rajmehta-live-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops.rajmehta.live-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key                    = "kops.rajmehta.live/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-version-txt" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key                    = "kops.rajmehta.live/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1a" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1a_content")
  key                    = "kops.rajmehta.live/manifests/etcd/events-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1b" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1b_content")
  key                    = "kops.rajmehta.live/manifests/etcd/events-master-us-east-1b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1c" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1c_content")
  key                    = "kops.rajmehta.live/manifests/etcd/events-master-us-east-1c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1a" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1a_content")
  key                    = "kops.rajmehta.live/manifests/etcd/main-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1b" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1b_content")
  key                    = "kops.rajmehta.live/manifests/etcd/main-master-us-east-1b.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1c" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1c_content")
  key                    = "kops.rajmehta.live/manifests/etcd/main-master-us-east-1c.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "kops.rajmehta.live/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1a" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1a_content")
  key                    = "kops.rajmehta.live/igconfig/master/master-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1b" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1b_content")
  key                    = "kops.rajmehta.live/igconfig/master/master-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1c" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1c_content")
  key                    = "kops.rajmehta.live/igconfig/master/master-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1a" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1a_content")
  key                    = "kops.rajmehta.live/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1b" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1b_content")
  key                    = "kops.rajmehta.live/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1c" {
  bucket                 = "terraform-kops-g1"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1c_content")
  key                    = "kops.rajmehta.live/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_security_group" "api-elb-kops-rajmehta-live" {
  description = "Security group for api ELB"
  name        = "api-elb.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "api-elb.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_security_group" "bastion-elb-kops-rajmehta-live" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "bastion-elb.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_security_group" "bastion-kops-rajmehta-live" {
  description = "Security group for bastion"
  name        = "bastion.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "bastion.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_security_group" "masters-kops-rajmehta-live" {
  description = "Security group for masters"
  name        = "masters.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "masters.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_security_group" "nodes-kops-rajmehta-live" {
  description = "Security group for nodes"
  name        = "nodes.kops.rajmehta.live"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "nodes.kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-kops-rajmehta-live" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-rajmehta-live.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-kops-rajmehta-live" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-kops-rajmehta-live" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-rajmehta-live.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-kops-rajmehta-live" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-kops-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-kops-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-rajmehta-live-ingress-tcp-22to22-bastion-kops-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-elb-kops-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-rajmehta-live-ingress-tcp-22to22-masters-kops-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-kops-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-rajmehta-live-ingress-tcp-22to22-nodes-kops-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-kops-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-rajmehta-live-ingress-all-0to0-masters-kops-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.masters-kops-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-rajmehta-live-ingress-all-0to0-nodes-kops-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.masters-kops-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-all-0to0-masters-kops-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-all-0to0-nodes-kops-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-tcp-1to2379-masters-kops-rajmehta-live" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-tcp-2382to4000-masters-kops-rajmehta-live" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-tcp-4003to65535-masters-kops-rajmehta-live" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-rajmehta-live-ingress-udp-1to65535-masters-kops-rajmehta-live" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-rajmehta-live.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-rajmehta-live.id
  source_security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-kops-rajmehta-live.id
  to_port           = -1
  type              = "ingress"
}

resource "aws_subnet" "us-east-1a-kops-rajmehta-live" {
  availability_zone                           = "us-east-1a"
  cidr_block                                  = "172.20.32.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                            = "kops.rajmehta.live"
    "Name"                                         = "us-east-1a.kops.rajmehta.live"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1a" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1a"  = "true"
    "kubernetes.io/cluster/kops.rajmehta.live"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_subnet" "us-east-1b-kops-rajmehta-live" {
  availability_zone                           = "us-east-1b"
  cidr_block                                  = "172.20.64.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                            = "kops.rajmehta.live"
    "Name"                                         = "us-east-1b.kops.rajmehta.live"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1b" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1b"  = "true"
    "kubernetes.io/cluster/kops.rajmehta.live"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_subnet" "us-east-1c-kops-rajmehta-live" {
  availability_zone                           = "us-east-1c"
  cidr_block                                  = "172.20.96.0/19"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                            = "kops.rajmehta.live"
    "Name"                                         = "us-east-1c.kops.rajmehta.live"
    "SubnetType"                                   = "Private"
    "kops.k8s.io/instance-group/bastions"          = "true"
    "kops.k8s.io/instance-group/master-us-east-1c" = "true"
    "kops.k8s.io/instance-group/nodes-us-east-1c"  = "true"
    "kubernetes.io/cluster/kops.rajmehta.live"     = "owned"
    "kubernetes.io/role/internal-elb"              = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_subnet" "utility-us-east-1a-kops-rajmehta-live" {
  availability_zone                           = "us-east-1a"
  cidr_block                                  = "172.20.0.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "utility-us-east-1a.kops.rajmehta.live"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_subnet" "utility-us-east-1b-kops-rajmehta-live" {
  availability_zone                           = "us-east-1b"
  cidr_block                                  = "172.20.4.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "utility-us-east-1b.kops.rajmehta.live"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_subnet" "utility-us-east-1c-kops-rajmehta-live" {
  availability_zone                           = "us-east-1c"
  cidr_block                                  = "172.20.8.0/22"
  enable_resource_name_dns_a_record_on_launch = true
  private_dns_hostname_type_on_launch         = "resource-name"
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "utility-us-east-1c.kops.rajmehta.live"
    "SubnetType"                               = "Utility"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
    "kubernetes.io/role/elb"                   = "1"
  }
  vpc_id = aws_vpc.kops-rajmehta-live.id
}

resource "aws_vpc" "kops-rajmehta-live" {
  assign_generated_ipv6_cidr_block = true
  cidr_block                       = "172.20.0.0/16"
  enable_dns_hostnames             = true
  enable_dns_support               = true
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kops-rajmehta-live" {
  domain_name         = "ec2.internal"
  domain_name_servers = ["AmazonProvidedDNS"]
  tags = {
    "KubernetesCluster"                        = "kops.rajmehta.live"
    "Name"                                     = "kops.rajmehta.live"
    "kubernetes.io/cluster/kops.rajmehta.live" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kops-rajmehta-live" {
  dhcp_options_id = aws_vpc_dhcp_options.kops-rajmehta-live.id
  vpc_id          = aws_vpc.kops-rajmehta-live.id
}

terraform {
  required_version = ">= 0.15.0"
  required_providers {
    aws = {
      "configuration_aliases" = [aws.files]
      "source"                = "hashicorp/aws"
      "version"               = ">= 4.0.0"
    }
  }
}
