variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "us-west-2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of your AWS key pair (for SSH)"
  type        = string
}

variable "project_name" {
  description = "Project name tag for AWS resources"
  type        = string
  default     = "nginx-demo"
}
