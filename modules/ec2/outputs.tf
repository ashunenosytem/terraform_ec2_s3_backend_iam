output "instance_ids" {
  description = "IDs of all EC2 instances"
  value       = [for i in aws_instance.this : i.id]
}

output "instance_names" {
  description = "Names of all EC2 instances"
  value       = [for i in aws_instance.this : i.tags.Name]
}
