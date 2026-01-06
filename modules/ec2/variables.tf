variable "ami" {
  description = "AMI ID for all EC2 instances"
  type        = string
}

variable "instance_profile" {
  description = "IAM instance profile for EC2"
  type        = string
}

variable "instances" {
  description = "Map of EC2 instances with names and types"
  type = map(object({
    name          = string
    instance_type = string
  }))
}
