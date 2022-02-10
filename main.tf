provider "aws" {
  region = "us-east-1"
}
module "s3_bucket" {
  source = "terraform-aws-modules/s3-bucket/aws"
  bucket = "well-s3-bucket"
  acl    = "private"
  versioning = {
    enabled = var.versioning
  }
  logging = {
    target_bucket = var.target_bucket
    target_prefix = var.target_prefix
  }
  server_side_encryption_configuration = {
    "rule" = {
      "apply_server_side_encryption_by_default" = {
        kms_master_key_id = var.kms_master_key_id
        sse_algorithm     = var.sse_algorithm
      }
    }
  }
  tags = var.tags
}
