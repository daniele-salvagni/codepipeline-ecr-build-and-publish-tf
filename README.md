# CodePipeline Example: Build and Publish a Docker image to ECR

This is a Terraform example for building and publishing a simple Docker image to
ECR using AWS CodePipeline without a buildspec file. This is done by using the new
`ECRBuildAndPublish` action (November 2024).

## Blog post

This example is part of the following blog post: [Simplify ECR image building and publishing with CodePipeline V2](https://dsalvagni.com/b/simplify-ecr-image-building-and-publishing-with-codepipeline/)

## How to deploy

To deploy this example, rename the `terraform.tfvars.example` file to `terraform.tfvars`
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

## Resources

- [AWS Docs - Actions Variables](https://docs.aws.amazon.com/codepipeline/latest/userguide/actions-variables.html)
- [AWS Docs - Variables reference](https://docs.aws.amazon.com/codepipeline/latest/userguide/reference-variables.html)
- [AWS Docs - Git Connections](https://docs.aws.amazon.com/dtconsole/latest/userguide/connections.html)
- [AWS Docs - IAM Permissions for CodePipeline](https://docs.aws.amazon.com/codepipeline/latest/userguide/security-iam.html)
