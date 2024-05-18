resource "helm_release" "promtail" {
  name       = "promtail"
  namespace  = "monitoring"
  repository = "https://grafana.github.io/helm-charts"
  chart      = "promtail"
  version    = "6.15.5"

  values = [file("values/promtail.yaml")]
}