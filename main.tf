module "iam" {
  source       = "./modules/iam"
  role_name    = var.role_name
  profile_name = var.profile_name
}

module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
}

module "ec2" {
  source           = "./modules/ec2"
  ami              = var.ami
  instance_profile = module.iam.instance_profile_name
  instances        = var.ec2_instances
}
