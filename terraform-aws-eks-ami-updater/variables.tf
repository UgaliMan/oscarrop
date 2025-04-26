variable "cluster_name" {
  description = "The name of the EKS cluster."
  type        = string
}

variable "launch_template_name" {
  description = "The name prefix for the new launch template."
  type        = string
}

variable "new_ami_id" {
  description = "The new AMI ID to update."
  type        = string
}

variable "region" {
  description = "AWS region to deploy resources in."
  type        = string
}
