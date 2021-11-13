module "lambda_function_externally_managed_package" {
  source = "terraform-aws-modules/lambda/aws"

  function_name = "${var.name}"
  handler       = "index.lambda_handler"
  runtime       = "nodejs12"

  create_package         = false
  local_existing_package = "./index.zip"

  ignore_source_code_hash = true
}