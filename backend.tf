terraform {
  backend "s3" {
    bucket = "ashu-s3-backend"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
