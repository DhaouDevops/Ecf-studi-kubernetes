resource "kubernetes_secret" "db_secret" {
  metadata {
    name = "db-secret"
  }
  data = {
    username = base64encode("nom-utilisateur")
    password = base64encode("on-password")
    database = base64encode("mon-bdd")
  }
  type = "Opaque"
}
