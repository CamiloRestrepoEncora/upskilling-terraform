# Autoscaling Input Variables
## Placeholder file
variable "instance_type" {
  description = "The type of EC2 instance to launch"
  type        = string
  default     = "t3.micro"
}

variable "instance_keypair" {
  description = "The key pair to associate with the EC2 instances"
  type        = string
  default     = "terraform-key"
}

variable "private_instance_count" {
  description = "The number of private EC2 instances to launch"
  type        = number
  default     = 2
}