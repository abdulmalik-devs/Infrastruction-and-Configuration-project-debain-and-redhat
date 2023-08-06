variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2
}

variable "ami_ids" {
  description = "AMI IDs for Debian and Red Hat"
  type        = list(string)
  default     = ["ami-0f8e81a3da6e2510a", "ami-0dc8c969d30e42996"]
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_pair_name" {
  description = "Name of the key pair for SSH access"
  type        = string
  default     = "ansi-key"
}

variable "security_group" {}

variable "instance_names" {}
