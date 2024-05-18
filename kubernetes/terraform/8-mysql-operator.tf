# resource "helm_release" "mysql_operator" {
#   name = "mysql-operator"

#   repository       = "https://mysql.github.io/mysql-operator"
#   chart            = "mysql-operator"
#   namespace        = "mysql-operator"
#   create_namespace = true

# }