resource "kubernetes_service_account" "this" {
  automount_service_account_token = true
  metadata {
    name        = var.irsa_sa
    namespace   = var.irsa_namespace
    annotations = {
      "eks.amazonaws.com/role-arn"         = module.this.arn
      "kubernetes.io/service-account.name" = var.irsa_sa
    }
    type = "kubernetes.io/service-account-token"
  }
}
