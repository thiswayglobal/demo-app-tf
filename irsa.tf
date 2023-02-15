module "this" {
  source         = "./irsa"
  name           = var.env_name
  cluster_name   = var.irsa_cluster_name
  namespace      = var.irsa_namespace
  serviceaccount = var.irsa_sa
  oidc_url       = var.irsa_oidc_url
  oidc_arn       = var.irsa_oidc_arn
  policy_arns    = ["arn:aws:iam::aws:policy/AmazonSNSFullAccess"]
  tags           = {
    ENV_NAME = var.env_name
  }
}