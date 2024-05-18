resource "helm_release" "cert_manager" {
  name       = "cert-manager"

  repository = "oci://registry-1.docker.io/bitnamicharts"
  chart      = "cert-manager"
  namespace  = "cert-manager"
  create_namespace = true

  # Specify the values file
  values = [
    file("values/cert-manager.yaml")
  ]
}