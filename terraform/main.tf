# ELASTIC CONTAINER REGISTRY ---------------------------------------------------

resource "aws_ecr_repository" "repository" {
  name                 = "${local.prefix}-repository"
  image_tag_mutability = "MUTABLE"
  force_delete         = true
}


# CODEPIPELINE (local module) --------------------------------------------------
# New images will be tagged with bot the commit ID and "latest"

module "codepipeline" {
  source              = "./modules/codepipeline"
  resource_prefix     = local.prefix
  ecr_repo_name       = aws_ecr_repository.repository.name
  source_codestar_arn = var.source_codestar_arn
  source_full_repo_id = var.source_full_repo_id
  source_branch_name  = var.source_branch_name
  dockerfile_path     = "./app/"
}
