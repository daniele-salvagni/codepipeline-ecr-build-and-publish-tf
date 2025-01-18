# CodePipeline Example: Build and Publish a Docker image to ECR

This is a Terraform example for building and publishing a simple Docker image to
ECR using AWS CodePipeline without a buildspec file. This is done by using the new
`ECRBuildAndPublish` action (November 2024).

To use this example, rename the `terraform.tfvars.example` file to `terraform.tfvars`
and fill in the variables. For creating a GitHub connection, see the instructions below.

```sh
cd terraform
terraform init
terraform plan
terraform apply
```

## Creating a GitHub Connection

```sh
aws codestar-connections create-connection --provider-type GitHub --connection-name my-github-connection
```

If successful, this command returns the connection ARN. You can then continue to setup the
connection using the AWS Console:
https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html

## Blog post

This example is part of the following blog post: https://dsalvagni.com/b/simplify-ecr-image-building-and-publishing-with-codepipeline/
