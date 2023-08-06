output "sg-instance" {
  description = "Security group instance ID"
  value       = [for sg in aws_security_group.instance_sgs : sg.id]
}
