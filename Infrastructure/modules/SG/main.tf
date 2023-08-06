resource "aws_security_group" "instance_sgs" {
  for_each = toset(var.ports)

  name        = "instance_sg_${each.key + 1}"
  description = "Instance Security Group ${each.key + 1}"
 
  ingress {
    from_port   = each.value
    to_port     = each.value
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}





















































/* 

resource "aws_security_group" "example_sg" {
  name        = var.security_group_name
  description = "Example security group"
}

resource "aws_security_group_rule" "web_sg" {
  count                     = length(var.allowed_ports)
  security_group_id         = aws_security_group.example_sg.id
  type                      = "ingress"
  from_port                 = var.allowed_ports[count.index]
  to_port                   = var.allowed_ports[count.index]
  protocol                  = "tcp"
  cidr_blocks               = ["0.0.0.0/0"]
}


variable "security_group_name" {
  description = "Name of the security group"
}

variable "allowed_ports" {
  description = "List of ports to allow in the security group"
  default     = [3000, 5000, 8000, 8080]
}

resource "aws_security_group" "web_sg" {
  name        = var.security_group_name
  description = "Example security group"
}

resource "aws_security_group_rule" "web_sg_rule" {
  count                     = length(var.allowed_ports)
  security_group_id         = aws_security_group.web_sg.id
  type                      = "ingress"
  from_port                 = var.allowed_ports[count.index]
  to_port                   = var.allowed_ports[count.index]
  protocol                  = "tcp"
  cidr_blocks               = ["0.0.0.0/0"]
} */
