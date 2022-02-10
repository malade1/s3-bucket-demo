   variable "acl" {
  type        = string
  description = "Enabling access control to manage the s3 bucket."
  default     = "private"
}
variable "versioning" {
  type        = bool
  description = "Enabling versioning."
  default     = true
}
variable "target_bucket" {
  type        = string
  description = "bucket for the log objects."
  default     = "well-s3-bucket"
}
variable "target_prefix" {
  type        = string
  description = "prefix for the log objects."
  default     = "log/"
}
variable "kms_master_key_id" {
  type        = string
  description = "The AWS KMS master key ID that is used for the SSE-KMS encryption."
  default     = "aws/s3"
}
variable "sse_algorithm" {
  type        = string
  description = "The AES256 and aws:kms, server-side encryption algorithm to use"
  default     = "aws:kms"
}
variable "tags" {
    type        = map
    description = "mapping tags for the bucket."
    default     = {
        environment = "test"
        terraform   = "true"
    }
}