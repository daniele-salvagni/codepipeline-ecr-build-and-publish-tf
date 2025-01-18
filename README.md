# CodePipeline Example: Build and Publish a Docker image to ECR

This is a Terraform example for building and publishing a Docker image to ECR using
AWS CodePipeline without using a buildspec file. This is done by using the new
`ECRBuildAndPublish` action.

To use this example, rename the `terraform.tfvars.example` file to `terraform.tfvars`
and fill in the variables. For the GitHub connection, see the instructions below.

```sh
terraform init
terraform plan
terraform apply
```

## Setup a GitHub Connection

```sh
aws codestar-connections create-connection --provider-type GitHub --connection-name my-github-connection
```

If successful, this command returns the connection ARN. You can then continue to setup the connection using the AWS Console: https://docs.aws.amazon.com/dtconsole/latest/userguide/connections-update.html
