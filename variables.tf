# IAM
variable "role_name" {
  description = "IAM role name for EC2"
  type        = string
}

variable "profile_name" {
  description = "IAM instance profile name"
  type        = string
}

# EC2
variable "ec2_instances" {
  description = "Map of EC2 instances with names and types"
  type = map(object({
    name          = string
    instance_type = string
  }))
}

# S3
variable "bucket_name" {
  description = "S3 bucket name"
  type        = string
}

# AMI
variable "ami" {
  description = "AMI ID for EC2"
  type        = string
}
