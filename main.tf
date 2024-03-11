resource "digitalocean_database_mysql_config" "mysql_main" {
  cluster_id        = digitalocean_database_cluster.mysql_main.id
  connect_timeout   = 10
  default_time_zone = "UTC"
}

resource "digitalocean_database_cluster" "mysql_main" {
  name       = var.databasename
  engine     = var.engine
  version    = var.version_of_engine
  size       = var.mysql_main_size
  region     = var.region
  node_count = var.mysql_main_node_count
  tags       = var.common_tags
}
