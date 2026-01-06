output "ec2_instance_ids" {
  value = module.ec2.instance_ids
}

output "ec2_instance_names" {
  value = module.ec2.instance_names
}

output "s3_bucket_name" {
  value = module.s3.bucket_name
}

output "iam_instance_profile_name" {
  value = module.iam.instance_profile_name
}
