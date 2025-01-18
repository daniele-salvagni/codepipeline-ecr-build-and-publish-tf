variable "resource_prefix" {
  type = string
}

variable "ecr_repo_name" {
  type = string
}

variable "source_codestar_arn" {
  type = string
}

variable "source_full_repo_id" {
  type = string
}

variable "source_branch_name" {
  type    = string
  default = "main"
}

variable "dockerfile_path" {
  type    = string
  default = "./"
}
