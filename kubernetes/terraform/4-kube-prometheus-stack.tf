resource "helm_release" "kube_prometheus_stack" {
  name       = "kube-prometheus-stack"
  
  namespace  = "monitoring"
  create_namespace = true
  repository = "https://prometheus-community.github.io/helm-charts"
  chart      = "kube-prometheus-stack"

  values = [file("values/kube-prometheus-stack.yaml")]

}