output "debian_ip" {
  description = "Public IP address of Debain_OS"
  value       = aws_instance.ec2[0].public_ip
}

output "redhat_ip" {
  description = "Public IP address of RedHat_OS"
  value       = aws_instance.ec2[1].public_ip
}

