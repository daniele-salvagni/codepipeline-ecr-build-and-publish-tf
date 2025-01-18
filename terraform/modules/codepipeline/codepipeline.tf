# CODEPIPELINE -----------------------------------------------------------------

resource "aws_codepipeline" "main" {
  name          = "${var.resource_prefix}-pipeline"
  pipeline_type = "V2"

  role_arn = aws_iam_role.codepipeline_role.arn

  artifact_store {
    location = aws_s3_bucket.artifact_store.bucket
    type     = "S3"
  }

  stage {
    name = "Source"
    action {
      name             = "Source"
      category         = "Source"
      namespace        = "Source"
      owner            = "AWS"
      provider         = "CodeStarSourceConnection"
      version          = 1
      output_artifacts = ["source_output"]
      configuration = {
        ConnectionArn    = var.source_codestar_arn
        FullRepositoryId = var.source_full_repo_id
        BranchName       = var.source_branch_name
      }
    }
  }

  stage {
    name = "Build"
    action {
      name            = "Build"
      category        = "Build"
      namespace       = "Build"
      owner           = "AWS"
      provider        = "ECRBuildAndPublish"
      version         = 1
      input_artifacts = ["source_output"]

      configuration = {
        ECRRepositoryName = var.ecr_repo_name
        DockerFilePath    = var.dockerfile_path
        ImageTags         = "#{Source.CommitId},latest"
      }
    }
  }
}
