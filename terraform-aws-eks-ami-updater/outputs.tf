output "launch_template_id" {
  description = "The ID of the newly created launch template."
  value       = aws_launch_template.eks_node_template.id
}
