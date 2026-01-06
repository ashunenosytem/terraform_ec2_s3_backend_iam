# IAM
role_name    = "ec2-s3-role"
profile_name = "ec2-instance-profile"

# S3
bucket_name = "my-unique-terraform-ashutw-bucket-12345"

# AMI
ami = "ami-02b8269d5e85954ef"

# EC2 instances
ec2_instances = {
  web1 = { name = "web-server-1", instance_type = "t3.micro" }
  web2 = { name = "web-server-2", instance_type = "t3.micro" }
  db1  = { name = "db-server-1",  instance_type = "t3.micro" }
}
