resource "aws_instance" "this" {
  for_each           = var.instances
  ami                 = var.ami
  instance_type       = each.value.instance_type
  iam_instance_profile = var.instance_profile

  tags = {
    Name = each.value.name
  }
}
