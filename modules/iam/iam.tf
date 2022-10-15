resource "aws_iam_group" "kops_iam_group" {
    name = "kops_iam_group"
}

data "aws_iam_policy" "ec2_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

data "aws_iam_policy" "route53_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonRoute53FullAccess"
}

data "aws_iam_policy" "s3_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

data "aws_iam_policy" "iam_full_access" {
    arn = "arn:aws:iam::aws:policy/IAMFullAccess"
}

data "aws_iam_policy" "vpc_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonVPCFullAccess"
}

data "aws_iam_policy" "sqs_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonSQSFullAccess"
}

data "aws_iam_policy" "eventbridge_full_access" {
    arn = "arn:aws:iam::aws:policy/AmazonEventBridgeFullAccess"
}

resource "aws_iam_policy_attachment" "attach_ec2"{
    name = "attach_ec2"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.ec2_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_route53"{
    name = "attach_route53"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.route53_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_s3"{
    name = "attach_s3"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.s3_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_iam"{
    name = "attach_iam"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.iam_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_vpc"{
    name = "attach_vpc"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.vpc_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_sqs"{
    name = "attach_sqs"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.sqs_full_access.arn
}

resource "aws_iam_policy_attachment" "attach_eventbridge"{
    name = "attach_eventbridge"
    groups = [aws_iam_group.kops_iam_group.name]
    policy_arn = data.aws_iam_policy.eventbridge_full_access.arn
}

resource "aws_iam_user" "kops_user" {
    name = "kops_user"
}

resource "aws_iam_user_group_membership" "attach_kops" {
    user = aws_iam_user.kops_user.name
    groups = [ aws_iam_group.kops_iam_group.name ]
}

resource "aws_iam_access_key" "user_access_key" {
  user    = aws_iam_user.kops_user.name
}

output "kopskey"       { value = "${aws_iam_access_key.user_access_key.id}"}
output "kopssecret"       { value = "${aws_iam_access_key.user_access_key.secret}"}
