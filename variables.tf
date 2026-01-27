# Variables
variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = ""
}

variable "notification_email" {
  description = "Email address for SNS notifications"
  type        = string
  default     = ""
}

variable "aws_profile" {
  description = "AWS CLI profile to use"
  type        = string
  default     = ""
}