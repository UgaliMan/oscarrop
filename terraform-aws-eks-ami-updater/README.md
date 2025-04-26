# terraform-aws-eks-ami-updater

This Terraform module automates the AMI update process for Amazon EKS node groups.

## Usage
```hcl
module "eks_ami_updater" {
  source = "./terraform-aws-eks-ami-updater"
  cluster_name = "my-eks-cluster"
  launch_template_name = "eks-node-lt"
  new_ami_id = "ami-1234567890abcdef0"
  region = "us-east-1"
}
```
