variable "project" {
  type        = string
  description = "The name of the project"
}

variable "env" {
  type        = string
  description = "The environment for the project"
}

variable "source_codestar_arn" {
  type        = string
  description = "The ARN of the CodeStar connection to use for the source stage of the pipeline"
}

variable "source_full_repo_id" {
  type        = string
  description = "The full repository ID of the source repository"
}

variable "source_branch_name" {
  type        = string
  default     = "main"
  description = "The branch to use for the source stage of the pipeline"
}
