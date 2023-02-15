module "test" {
  source      = "terraform-aws-modules/sns/aws"
  version     = "4.1.0"
  name_prefix = "demo-app-"
  tags        = {
    ENV_NAME = var.env_name
  }
}
