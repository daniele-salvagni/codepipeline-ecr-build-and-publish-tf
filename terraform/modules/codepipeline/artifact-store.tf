# S3 ARTIFACT BUCKET -----------------------------------------------------------

resource "aws_s3_bucket" "artifact_store" {
  bucket        = "${var.resource_prefix}-artifact-store-${random_string.random.result}"
  force_destroy = true
}
