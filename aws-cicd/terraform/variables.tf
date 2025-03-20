variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "aws_access_key" {
  description = "AWS access key"
  type        = string
}

variable "aws_secret_key" {
  description = "AWS secret key"
  type        = string
}

variable "project_name" {
  description = "Name of the project"
  type        = string
  default     = "feroz-demo"
}

variable "github_repo" {
  description = "GitHub repository name"
  type        = string
  default     = "aws-github-cicd-demo"
}

variable "github_branch" {
  description = "GitHub branch to trigger the pipeline"
  type        = string
  default     = "main"
}

variable "github_owner" {
  description = "GitHub repository owner"
  type        = string
  default     = "ferheena"
}

variable "aws_account_id" {
  description = "AWS Account ID"
  type        = string
  default     = "888577034475"
}

variable "github_token" {
  description = "GitHub personal access token for webhook"
  type        = string
}
