provider "aws" {
  region = "us-east-1"
}

module "lambda_function_externally_managed_package" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "${var.name}"
  handler       = "index.lambda_handler"
  runtime       = "nodejs12.x"

  create_package         = false
  local_existing_package = "./index.zip"

  ignore_source_code_hash = true
}
