output "ubuntu_ip" {
  value = module.ec2_instances.debian_ip
}

output "red-hat_ip" {
  value = module.ec2_instances.redhat_ip
}