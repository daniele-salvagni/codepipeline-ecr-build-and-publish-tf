# IAM ROLE FOR CODEPIPELINE ----------------------------------------------------

resource "aws_iam_role" "codepipeline_role" {
  name               = "${var.resource_prefix}-pipeline-role"
  assume_role_policy = file("${path.module}/policies/codepipeline_assume_role.json")
}

resource "aws_iam_policy" "codepipeline_policy" {
  name   = "${var.resource_prefix}-pipeline-policy"
  policy = file("${path.module}/policies/codepipeline_policy.json")
}

resource "aws_iam_role_policy_attachment" "codepipeline_policy_attachment" {
  role       = aws_iam_role.codepipeline_role.name
  policy_arn = aws_iam_policy.codepipeline_policy.arn
}
