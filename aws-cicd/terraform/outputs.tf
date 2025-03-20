# terraform/outputs.tf
output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "ecr_repository_url" {
  description = "The URL of the ECR repository"
  value       = aws_ecr_repository.app.repository_url
}

output "ecs_cluster_name" {
  description = "The name of the ECS cluster"
  value       = aws_ecs_cluster.main.name
}

output "ecs_service_name" {
  description = "The name of the ECS service"
  value       = aws_ecs_service.app.name
}

output "codebuild_project_name" {
  description = "The name of the CodeBuild project"
  value       = aws_codebuild_project.app_build.name
}

output "github_webhook_url" {
  description = "The URL of the GitHub webhook"
  value       = aws_codebuild_webhook.github_webhook.payload_url
}

output "app_public_url" {
  description = "The public URL where the app will be accessible"
  value       = "http://${aws_ecs_service.app.name}.${var.aws_region}.elb.amazonaws.com:5000"
}
