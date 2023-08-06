resource "aws_instance" "ec2" {
  count         = var.instance_count
  ami           = var.ami_ids[count.index]
  instance_type = var.instance_type
  key_name      = var.key_pair_name
  vpc_security_group_ids = "${var.security_group}"
 
  tags = {
    Name = var.instance_names[count.index]
  }
}