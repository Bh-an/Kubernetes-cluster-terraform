resource "aws_s3_bucket" "kops_bucket_csye7125" {
    bucket = var.s3_bucket_name
    #acl = "private"
    force_destroy = true
    tags = {
        "Name" = var.s3_bucket_name
    }
}

resource "aws_s3_bucket_versioning" "s3_versioning" {
    bucket = aws_s3_bucket.kops_bucket_csye7125.id
    versioning_configuration {
        status = "Enabled"
    }
}

