resource "helm_release" "metrics_server" {
  name       = "metrics-server"

  namespace  = "monitoring"
  create_namespace = true
  repository = "https://kubernetes-sigs.github.io/metrics-server/"
  chart      = "metrics-server"
}
