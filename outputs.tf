output "sns_test" {
  value = module.test.sns_topic_arn
}
output "irsa_arn" {
  value = module.this.arn
}

resource "kubernetes_secret_v1" "output_secret" {
  metadata {
    name      = "${var.env_name}-tf-output"
    namespace = var.irsa_namespace
  }

  data = {
    sns_test    = module.test.sns_topic_arn
  }
}
