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
