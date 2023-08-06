# Data source for VPC
data "aws_vpc" "default_vpc" {
  default = true
}

# Data source for Subnets
data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

# Ansible Client Servers
module "ec2_instances" {
  source = "./modules/EC2"

  instance_names = ["ubuntu-server", "redhat-server"]
  security_group = module.security_group.sg-instance
}

#Security groups
module "security_group" {
  source = "./modules/SG"

}