resource "digitalocean_database_mysql_config" "main" {
  cluster_id        = digitalocean_database_cluster.main.id
  connect_timeout   = 10
  default_time_zone = "UTC"
}
resource "digitalocean_database_firewall" "main" {
  cluster_id = digitalocean_database_cluster.main.id

  dynamic "rule" {
    for_each = var.firewall_rules
    content {
      type  = "ip_addr"
      value = rule.value
    }
  }
}
resource "digitalocean_database_user" "main" {
  for_each   = var.database_users
  cluster_id = digitalocean_database_cluster.main.id
  name       = each.key
}
resource "digitalocean_database_cluster" "main" {
  name       = var.cluster_name
  engine     = "mysql"
  version    = var.mysql_version
  size       = var.node_size
  region     = var.region
  node_count = var.node_count
  tags       = var.common_tags
}
