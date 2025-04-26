resource "aws_launch_template" "eks_node_template" {
  name_prefix   = var.launch_template_name
  image_id      = var.new_ami_id
  instance_type = "t3.medium" # Example, adjust based on your needs

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "eks_node_group" {
  launch_template {
    id      = aws_launch_template.eks_node_template.id
    version = "$Latest"
  }
  min_size         = 2
  max_size         = 5
  desired_capacity = 3

  tag {
    key                 = "kubernetes.io/cluster/${var.cluster_name}"
    value               = "owned"
    propagate_at_launch = true
  }
}
