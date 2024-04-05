provider "digitalocean" {
  token = var.do_token
}

module "terraform-module-digitalocean-mysql" {
  source                 = "github.com/opsd-io/terraform-module-digitalocean-mysql"
  cluster_name           = "example-mysql-cluster"
  mysql_version          = "8"
  node_size              = "db-s-1vcpu-1gb"
  region                 = "nyc1"
  node_count             = 1
  common_tags            = ["production"]
  database_users         = ["Admin", "Mark", "Robert"]
  firewall_rules         = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
  replica_enable         = true
  replica_firewall_rules = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
