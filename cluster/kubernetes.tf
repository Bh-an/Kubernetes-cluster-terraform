locals {
  bastion_autoscaling_group_ids = [aws_autoscaling_group.bastions-kops-dev-rajmehta-live.id]
  bastion_security_group_ids    = [aws_security_group.bastion-kops-dev-rajmehta-live.id]
  bastions_role_arn             = aws_iam_role.bastions-kops-dev-rajmehta-live.arn
  bastions_role_name            = aws_iam_role.bastions-kops-dev-rajmehta-live.name
  cluster_name                  = "kops.dev.rajmehta.live"
  master_autoscaling_group_ids  = [aws_autoscaling_group.master-us-east-1a-masters-kops-dev-rajmehta-live.id]
  master_security_group_ids     = [aws_security_group.masters-kops-dev-rajmehta-live.id]
  masters_role_arn              = aws_iam_role.masters-kops-dev-rajmehta-live.arn
  masters_role_name             = aws_iam_role.masters-kops-dev-rajmehta-live.name
  node_autoscaling_group_ids    = [aws_autoscaling_group.nodes-us-east-1a-kops-dev-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1b-kops-dev-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1c-kops-dev-rajmehta-live.id]
  node_security_group_ids       = [aws_security_group.nodes-kops-dev-rajmehta-live.id]
  node_subnet_ids               = ["subnet-013fae5821f791c04", "subnet-040a5a27ae3afacaa", "subnet-043375fbc6882bf86"]
  nodes_role_arn                = aws_iam_role.nodes-kops-dev-rajmehta-live.arn
  nodes_role_name               = aws_iam_role.nodes-kops-dev-rajmehta-live.name
  region                        = "us-east-1"
  subnet_ids                    = ["subnet-00bc585a9c0ef3d3b", "subnet-013fae5821f791c04", "subnet-02ce82a489f273bc3", "subnet-040a5a27ae3afacaa", "subnet-043375fbc6882bf86", "subnet-0e8364bc621d0f70e"]
  subnet_us-east-1a_id          = "subnet-013fae5821f791c04"
  subnet_us-east-1b_id          = "subnet-043375fbc6882bf86"
  subnet_us-east-1c_id          = "subnet-040a5a27ae3afacaa"
  subnet_utility-us-east-1a_id  = "subnet-00bc585a9c0ef3d3b"
  subnet_utility-us-east-1b_id  = "subnet-0e8364bc621d0f70e"
  subnet_utility-us-east-1c_id  = "subnet-02ce82a489f273bc3"
  vpc_id                        = "vpc-0a783655b414b3cea"
}

output "bastion_autoscaling_group_ids" {
  value = [aws_autoscaling_group.bastions-kops-dev-rajmehta-live.id]
}

output "bastion_security_group_ids" {
  value = [aws_security_group.bastion-kops-dev-rajmehta-live.id]
}

output "bastions_role_arn" {
  value = aws_iam_role.bastions-kops-dev-rajmehta-live.arn
}

output "bastions_role_name" {
  value = aws_iam_role.bastions-kops-dev-rajmehta-live.name
}

output "cluster_name" {
  value = "kops.dev.rajmehta.live"
}

output "master_autoscaling_group_ids" {
  value = [aws_autoscaling_group.master-us-east-1a-masters-kops-dev-rajmehta-live.id]
}

output "master_security_group_ids" {
  value = [aws_security_group.masters-kops-dev-rajmehta-live.id]
}

output "masters_role_arn" {
  value = aws_iam_role.masters-kops-dev-rajmehta-live.arn
}

output "masters_role_name" {
  value = aws_iam_role.masters-kops-dev-rajmehta-live.name
}

output "node_autoscaling_group_ids" {
  value = [aws_autoscaling_group.nodes-us-east-1a-kops-dev-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1b-kops-dev-rajmehta-live.id, aws_autoscaling_group.nodes-us-east-1c-kops-dev-rajmehta-live.id]
}

output "node_security_group_ids" {
  value = [aws_security_group.nodes-kops-dev-rajmehta-live.id]
}

output "node_subnet_ids" {
  value = ["subnet-013fae5821f791c04", "subnet-040a5a27ae3afacaa", "subnet-043375fbc6882bf86"]
}

output "nodes_role_arn" {
  value = aws_iam_role.nodes-kops-dev-rajmehta-live.arn
}

output "nodes_role_name" {
  value = aws_iam_role.nodes-kops-dev-rajmehta-live.name
}

output "region" {
  value = "us-east-1"
}

output "subnet_ids" {
  value = ["subnet-00bc585a9c0ef3d3b", "subnet-013fae5821f791c04", "subnet-02ce82a489f273bc3", "subnet-040a5a27ae3afacaa", "subnet-043375fbc6882bf86", "subnet-0e8364bc621d0f70e"]
}

output "subnet_us-east-1a_id" {
  value = "subnet-013fae5821f791c04"
}

output "subnet_us-east-1b_id" {
  value = "subnet-043375fbc6882bf86"
}

output "subnet_us-east-1c_id" {
  value = "subnet-040a5a27ae3afacaa"
}

output "subnet_utility-us-east-1a_id" {
  value = "subnet-00bc585a9c0ef3d3b"
}

output "subnet_utility-us-east-1b_id" {
  value = "subnet-0e8364bc621d0f70e"
}

output "subnet_utility-us-east-1c_id" {
  value = "subnet-02ce82a489f273bc3"
}

output "vpc_id" {
  value = "vpc-0a783655b414b3cea"
}

provider "aws" {
  region = "us-east-1"
}

provider "aws" {
  alias  = "files"
  region = "us-east-1"
}

resource "aws_autoscaling_group" "bastions-kops-dev-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.bastions-kops-dev-rajmehta-live.id
    version = aws_launch_template.bastions-kops-dev-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.bastion-kops-dev-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "bastions.kops.dev.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.dev.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "bastions.kops.dev.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.dev.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fae5821f791c04", "subnet-043375fbc6882bf86", "subnet-040a5a27ae3afacaa"]
}

resource "aws_autoscaling_group" "master-us-east-1a-masters-kops-dev-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.master-us-east-1a-masters-kops-dev-rajmehta-live.id
    version = aws_launch_template.master-us-east-1a-masters-kops-dev-rajmehta-live.latest_version
  }
  load_balancers        = [aws_elb.api-kops-dev-rajmehta-live.id]
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "master-us-east-1a.masters.kops.dev.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.dev.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "master-us-east-1a.masters.kops.dev.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.dev.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fae5821f791c04"]
}

resource "aws_autoscaling_group" "nodes-us-east-1a-kops-dev-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1a-kops-dev-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1a-kops-dev-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 1
  metrics_granularity   = "1Minute"
  min_size              = 1
  name                  = "nodes-us-east-1a.kops.dev.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.dev.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1a.kops.dev.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.dev.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-013fae5821f791c04"]
}

resource "aws_autoscaling_group" "nodes-us-east-1b-kops-dev-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1b-kops-dev-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1b-kops-dev-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 0
  metrics_granularity   = "1Minute"
  min_size              = 0
  name                  = "nodes-us-east-1b.kops.dev.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.dev.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1b.kops.dev.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.dev.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-043375fbc6882bf86"]
}

resource "aws_autoscaling_group" "nodes-us-east-1c-kops-dev-rajmehta-live" {
  enabled_metrics = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
  launch_template {
    id      = aws_launch_template.nodes-us-east-1c-kops-dev-rajmehta-live.id
    version = aws_launch_template.nodes-us-east-1c-kops-dev-rajmehta-live.latest_version
  }
  max_instance_lifetime = 0
  max_size              = 0
  metrics_granularity   = "1Minute"
  min_size              = 0
  name                  = "nodes-us-east-1c.kops.dev.rajmehta.live"
  protect_from_scale_in = false
  tag {
    key                 = "KubernetesCluster"
    propagate_at_launch = true
    value               = "kops.dev.rajmehta.live"
  }
  tag {
    key                 = "Name"
    propagate_at_launch = true
    value               = "nodes-us-east-1c.kops.dev.rajmehta.live"
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
    key                 = "kubernetes.io/cluster/kops.dev.rajmehta.live"
    propagate_at_launch = true
    value               = "owned"
  }
  vpc_zone_identifier = ["subnet-040a5a27ae3afacaa"]
}

resource "aws_ebs_volume" "a-etcd-events-kops-dev-rajmehta-live" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "a.etcd-events.kops.dev.rajmehta.live"
    "k8s.io/etcd/events"                           = "a/a"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_ebs_volume" "a-etcd-main-kops-dev-rajmehta-live" {
  availability_zone = "us-east-1a"
  encrypted         = true
  iops              = 3000
  size              = 20
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "a.etcd-main.kops.dev.rajmehta.live"
    "k8s.io/etcd/main"                             = "a/a"
    "k8s.io/role/master"                           = "1"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  throughput = 125
  type       = "gp3"
}

resource "aws_elb" "api-kops-dev-rajmehta-live" {
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
  name            = "api-kops-dev-rajmehta-liv-q4ivon"
  security_groups = [aws_security_group.api-elb-kops-dev-rajmehta-live.id]
  subnets         = ["subnet-00bc585a9c0ef3d3b", "subnet-02ce82a489f273bc3", "subnet-0e8364bc621d0f70e"]
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "api.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_elb" "bastion-kops-dev-rajmehta-live" {
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
  name            = "bastion-kops-dev-rajmehta-9usm5h"
  security_groups = [aws_security_group.bastion-elb-kops-dev-rajmehta-live.id]
  subnets         = ["subnet-00bc585a9c0ef3d3b", "subnet-02ce82a489f273bc3", "subnet-0e8364bc621d0f70e"]
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "bastion.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "bastions-kops-dev-rajmehta-live" {
  name = "bastions.kops.dev.rajmehta.live"
  role = aws_iam_role.bastions-kops-dev-rajmehta-live.name
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "bastions.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kops-dev-rajmehta-live" {
  name = "masters.kops.dev.rajmehta.live"
  role = aws_iam_role.masters-kops-dev-rajmehta-live.name
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "masters.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_instance_profile" "nodes-kops-dev-rajmehta-live" {
  name = "nodes.kops.dev.rajmehta.live"
  role = aws_iam_role.nodes-kops-dev-rajmehta-live.name
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "nodes.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "bastions-kops-dev-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_bastions.kops.dev.rajmehta.live_policy")
  name               = "bastions.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "bastions.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "masters-kops-dev-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_masters.kops.dev.rajmehta.live_policy")
  name               = "masters.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "masters.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role" "nodes-kops-dev-rajmehta-live" {
  assume_role_policy = file("${path.module}/data/aws_iam_role_nodes.kops.dev.rajmehta.live_policy")
  name               = "nodes.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "nodes.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_iam_role_policy" "bastions-kops-dev-rajmehta-live" {
  name   = "bastions.kops.dev.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_bastions.kops.dev.rajmehta.live_policy")
  role   = aws_iam_role.bastions-kops-dev-rajmehta-live.name
}

resource "aws_iam_role_policy" "masters-kops-dev-rajmehta-live" {
  name   = "masters.kops.dev.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_masters.kops.dev.rajmehta.live_policy")
  role   = aws_iam_role.masters-kops-dev-rajmehta-live.name
}

resource "aws_iam_role_policy" "nodes-kops-dev-rajmehta-live" {
  name   = "nodes.kops.dev.rajmehta.live"
  policy = file("${path.module}/data/aws_iam_role_policy_nodes.kops.dev.rajmehta.live_policy")
  role   = aws_iam_role.nodes-kops-dev-rajmehta-live.name
}

resource "aws_key_pair" "kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e" {
  key_name   = "kubernetes.kops.dev.rajmehta.live-22:c5:5a:24:15:8f:ce:ab:f4:ff:ee:ce:5f:e7:78:9e"
  public_key = file("${path.module}/data/aws_key_pair_kubernetes.kops.dev.rajmehta.live-22c55a24158fceabf4ffeece5fe7789e_public_key")
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
}

resource "aws_launch_template" "bastions-kops-dev-rajmehta-live" {
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
    name = aws_iam_instance_profile.bastions-kops-dev-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.micro"
  key_name      = aws_key_pair.kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
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
  name = "bastions.kops.dev.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.bastion-kops-dev-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "bastions.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "bastions.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/bastion"                                                        = "1"
      "kops.k8s.io/instancegroup"                                                  = "bastions"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
    "Name"                                                                       = "bastions.kops.dev.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/bastion"                                                        = "1"
    "kops.k8s.io/instancegroup"                                                  = "bastions"
    "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
  }
}

resource "aws_launch_template" "master-us-east-1a-masters-kops-dev-rajmehta-live" {
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
    name = aws_iam_instance_profile.masters-kops-dev-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
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
  name = "master-us-east-1a.masters.kops.dev.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.masters-kops-dev-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.dev.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                                                          = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                                                     = "kops.dev.rajmehta.live"
      "Name"                                                                                                  = "master-us-east-1a.masters.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
      "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
      "k8s.io/role/master"                                                                                    = "1"
      "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                                                          = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                                                     = "kops.dev.rajmehta.live"
    "Name"                                                                                                  = "master-us-east-1a.masters.kops.dev.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/kops-controller-pki"                         = ""
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"                                      = "master"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/control-plane"                   = ""
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/master"                          = ""
    "k8s.io/cluster-autoscaler/node-template/label/node.kubernetes.io/exclude-from-external-load-balancers" = ""
    "k8s.io/role/master"                                                                                    = "1"
    "kops.k8s.io/instancegroup"                                                                             = "master-us-east-1a"
    "kubernetes.io/cluster/kops.dev.rajmehta.live"                                                          = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_master-us-east-1a.masters.kops.dev.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1a-kops-dev-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-dev-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
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
  name = "nodes-us-east-1a.kops.dev.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-dev-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1a.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1a.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1a.kops.dev.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1a"
    "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1a.kops.dev.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1b-kops-dev-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-dev-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
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
  name = "nodes-us-east-1b.kops.dev.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-dev-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1b.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1b.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1b.kops.dev.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1b"
    "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1b.kops.dev.rajmehta.live_user_data")
}

resource "aws_launch_template" "nodes-us-east-1c-kops-dev-rajmehta-live" {
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
    name = aws_iam_instance_profile.nodes-kops-dev-rajmehta-live.id
  }
  image_id      = "ami-0c1704bac156af62c"
  instance_type = "t3.medium"
  key_name      = aws_key_pair.kubernetes-kops-dev-rajmehta-live-22c55a24158fceabf4ffeece5fe7789e.id
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
  name = "nodes-us-east-1c.kops.dev.rajmehta.live"
  network_interfaces {
    associate_public_ip_address = false
    delete_on_termination       = true
    ipv6_address_count          = 0
    security_groups             = [aws_security_group.nodes-kops-dev-rajmehta-live.id]
  }
  tag_specifications {
    resource_type = "instance"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1c.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tag_specifications {
    resource_type = "volume"
    tags = {
      "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
      "Name"                                                                       = "nodes-us-east-1c.kops.dev.rajmehta.live"
      "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
      "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
      "k8s.io/role/node"                                                           = "1"
      "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
      "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
    }
  }
  tags = {
    "KubernetesCluster"                                                          = "kops.dev.rajmehta.live"
    "Name"                                                                       = "nodes-us-east-1c.kops.dev.rajmehta.live"
    "k8s.io/cluster-autoscaler/node-template/label/kubernetes.io/role"           = "node"
    "k8s.io/cluster-autoscaler/node-template/label/node-role.kubernetes.io/node" = ""
    "k8s.io/role/node"                                                           = "1"
    "kops.k8s.io/instancegroup"                                                  = "nodes-us-east-1c"
    "kubernetes.io/cluster/kops.dev.rajmehta.live"                               = "owned"
  }
  user_data = filebase64("${path.module}/data/aws_launch_template_nodes-us-east-1c.kops.dev.rajmehta.live_user_data")
}

resource "aws_route53_record" "api-kops-dev-rajmehta-live" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.api-kops-dev-rajmehta-live.dns_name
    zone_id                = aws_elb.api-kops-dev-rajmehta-live.zone_id
  }
  name    = "api.kops.dev.rajmehta.live"
  type    = "A"
  zone_id = "/hostedzone/Z00127373N0C47SV20IFV"
}

resource "aws_route53_record" "bastion-kops-dev-rajmehta-live" {
  alias {
    evaluate_target_health = false
    name                   = aws_elb.bastion-kops-dev-rajmehta-live.dns_name
    zone_id                = aws_elb.bastion-kops-dev-rajmehta-live.zone_id
  }
  name    = "bastion.kops.dev.rajmehta.live"
  type    = "A"
  zone_id = "/hostedzone/Z00127373N0C47SV20IFV"
}

resource "aws_s3_object" "cluster-completed-spec" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_cluster-completed.spec_content")
  key                    = "kops.dev.rajmehta.live/cluster-completed.spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-events" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-events_content")
  key                    = "kops.dev.rajmehta.live/backups/etcd/events/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "etcd-cluster-spec-main" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_etcd-cluster-spec-main_content")
  key                    = "kops.dev.rajmehta.live/backups/etcd/main/control/etcd-cluster-spec"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-bootstrap" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-bootstrap_content")
  key                    = "kops.dev.rajmehta.live/addons/bootstrap-channel.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-coredns-addons-k8s-io-k8s-1-12" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-coredns.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.dev.rajmehta.live/addons/coredns.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-dns-controller-addons-k8s-io-k8s-1-12" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-dns-controller.addons.k8s.io-k8s-1.12_content")
  key                    = "kops.dev.rajmehta.live/addons/dns-controller.addons.k8s.io/k8s-1.12.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-kops-controller-addons-k8s-io-k8s-1-16" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-kops-controller.addons.k8s.io-k8s-1.16_content")
  key                    = "kops.dev.rajmehta.live/addons/kops-controller.addons.k8s.io/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-kubelet-api-rbac-addons-k8s-io-k8s-1-9" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-kubelet-api.rbac.addons.k8s.io-k8s-1.9_content")
  key                    = "kops.dev.rajmehta.live/addons/kubelet-api.rbac.addons.k8s.io/k8s-1.9.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-limit-range-addons-k8s-io" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-limit-range.addons.k8s.io_content")
  key                    = "kops.dev.rajmehta.live/addons/limit-range.addons.k8s.io/v1.5.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-networking-amazon-vpc-routed-eni-k8s-1-16" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-networking.amazon-vpc-routed-eni-k8s-1.16_content")
  key                    = "kops.dev.rajmehta.live/addons/networking.amazon-vpc-routed-eni/k8s-1.16.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-dev-rajmehta-live-addons-storage-aws-addons-k8s-io-v1-15-0" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops.dev.rajmehta.live-addons-storage-aws.addons.k8s.io-v1.15.0_content")
  key                    = "kops.dev.rajmehta.live/addons/storage-aws.addons.k8s.io/v1.15.0.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "kops-version-txt" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_kops-version.txt_content")
  key                    = "kops.dev.rajmehta.live/kops-version.txt"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-events-master-us-east-1a" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-events-master-us-east-1a_content")
  key                    = "kops.dev.rajmehta.live/manifests/etcd/events-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-etcdmanager-main-master-us-east-1a" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_manifests-etcdmanager-main-master-us-east-1a_content")
  key                    = "kops.dev.rajmehta.live/manifests/etcd/main-master-us-east-1a.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "manifests-static-kube-apiserver-healthcheck" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_manifests-static-kube-apiserver-healthcheck_content")
  key                    = "kops.dev.rajmehta.live/manifests/static/kube-apiserver-healthcheck.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-master-us-east-1a" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-master-us-east-1a_content")
  key                    = "kops.dev.rajmehta.live/igconfig/master/master-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1a" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1a_content")
  key                    = "kops.dev.rajmehta.live/igconfig/node/nodes-us-east-1a/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1b" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1b_content")
  key                    = "kops.dev.rajmehta.live/igconfig/node/nodes-us-east-1b/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_s3_object" "nodeupconfig-nodes-us-east-1c" {
  bucket                 = "a4-kops-state"
  content                = file("${path.module}/data/aws_s3_object_nodeupconfig-nodes-us-east-1c_content")
  key                    = "kops.dev.rajmehta.live/igconfig/node/nodes-us-east-1c/nodeupconfig.yaml"
  provider               = aws.files
  server_side_encryption = "AES256"
}

resource "aws_security_group" "api-elb-kops-dev-rajmehta-live" {
  description = "Security group for api ELB"
  name        = "api-elb.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "api-elb.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  vpc_id = "vpc-0a783655b414b3cea"
}

resource "aws_security_group" "bastion-elb-kops-dev-rajmehta-live" {
  description = "Security group for bastion ELB"
  name        = "bastion-elb.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "bastion-elb.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  vpc_id = "vpc-0a783655b414b3cea"
}

resource "aws_security_group" "bastion-kops-dev-rajmehta-live" {
  description = "Security group for bastion"
  name        = "bastion.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "bastion.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  vpc_id = "vpc-0a783655b414b3cea"
}

resource "aws_security_group" "masters-kops-dev-rajmehta-live" {
  description = "Security group for masters"
  name        = "masters.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "masters.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  vpc_id = "vpc-0a783655b414b3cea"
}

resource "aws_security_group" "nodes-kops-dev-rajmehta-live" {
  description = "Security group for nodes"
  name        = "nodes.kops.dev.rajmehta.live"
  tags = {
    "KubernetesCluster"                            = "kops.dev.rajmehta.live"
    "Name"                                         = "nodes.kops.dev.rajmehta.live"
    "kubernetes.io/cluster/kops.dev.rajmehta.live" = "owned"
  }
  vpc_id = "vpc-0a783655b414b3cea"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-22to22-bastion-elb-kops-dev-rajmehta-live" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 22
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-dev-rajmehta-live.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-0-0-0-0--0-ingress-tcp-443to443-api-elb-kops-dev-rajmehta-live" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 443
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-22to22-bastion-elb-kops-dev-rajmehta-live" {
  from_port         = 22
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.bastion-elb-kops-dev-rajmehta-live.id
  to_port           = 22
  type              = "ingress"
}

resource "aws_security_group_rule" "from-__--0-ingress-tcp-443to443-api-elb-kops-dev-rajmehta-live" {
  from_port         = 443
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "tcp"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = 443
  type              = "ingress"
}

resource "aws_security_group_rule" "from-api-elb-kops-dev-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-api-elb-kops-dev-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-dev-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-dev-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-elb-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-elb-kops-dev-rajmehta-live-ingress-tcp-22to22-bastion-kops-dev-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.bastion-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-elb-kops-dev-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-dev-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-dev-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.bastion-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-bastion-kops-dev-rajmehta-live-ingress-tcp-22to22-masters-kops-dev-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-kops-dev-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-bastion-kops-dev-rajmehta-live-ingress-tcp-22to22-nodes-kops-dev-rajmehta-live" {
  from_port                = 22
  protocol                 = "tcp"
  security_group_id        = aws_security_group.nodes-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.bastion-kops-dev-rajmehta-live.id
  to_port                  = 22
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-dev-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-dev-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.masters-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-masters-kops-dev-rajmehta-live-ingress-all-0to0-masters-kops-dev-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.masters-kops-dev-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-masters-kops-dev-rajmehta-live-ingress-all-0to0-nodes-kops-dev-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.masters-kops-dev-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-egress-all-0to0-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 0
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-egress-all-0to0-__--0" {
  from_port         = 0
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "-1"
  security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port           = 0
  type              = "egress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-all-0to0-masters-kops-dev-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-all-0to0-nodes-kops-dev-rajmehta-live" {
  from_port                = 0
  protocol                 = "-1"
  security_group_id        = aws_security_group.nodes-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 0
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-tcp-1to2379-masters-kops-dev-rajmehta-live" {
  from_port                = 1
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 2379
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-tcp-2382to4000-masters-kops-dev-rajmehta-live" {
  from_port                = 2382
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 4000
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-tcp-4003to65535-masters-kops-dev-rajmehta-live" {
  from_port                = 4003
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "from-nodes-kops-dev-rajmehta-live-ingress-udp-1to65535-masters-kops-dev-rajmehta-live" {
  from_port                = 1
  protocol                 = "udp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.nodes-kops-dev-rajmehta-live.id
  to_port                  = 65535
  type                     = "ingress"
}

resource "aws_security_group_rule" "https-elb-to-master" {
  from_port                = 443
  protocol                 = "tcp"
  security_group_id        = aws_security_group.masters-kops-dev-rajmehta-live.id
  source_security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port                  = 443
  type                     = "ingress"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  cidr_blocks       = ["0.0.0.0/0"]
  from_port         = 3
  protocol          = "icmp"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = 4
  type              = "ingress"
}

resource "aws_security_group_rule" "icmpv6-pmtu-api-elb-__--0" {
  from_port         = -1
  ipv6_cidr_blocks  = ["::/0"]
  protocol          = "icmpv6"
  security_group_id = aws_security_group.api-elb-kops-dev-rajmehta-live.id
  to_port           = -1
  type              = "ingress"
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
