resource "vultr_kubernetes" "k8s" {
  region  = "icn"
  label   = "xanny-cluster"
  version = "v1.28.7+1"

  node_pools {
    label         = "xanny-main"
    node_quantity = 1
    plan          = "vc2-2c-4gb"
    auto_scaler   = false
  }
}

# resource "vultr_kubernetes_node_pools" "np" {
#   cluster_id    = vultr_kubernetes.k8s.id
#   label         = "xanny-main"
#   plan          = "vc2-2c-4gb"
#   node_quantity = 1
#   auto_scaler   = true
#   min_nodes     = 1
#   max_nodes     = 2
# }