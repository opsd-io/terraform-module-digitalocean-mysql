module "Digitalocean_mysql" {
  source                = "github.com/opsd-io/terraform-module-digitalocean-mysql?ref=71a854a0d92d46334e5e062bc59d7807aa2549d0"
  databasename          = "example-mysql-cluster"
  engine                = "mysql"
  version_of_engine     = "8"
  mysql_main_size       = "db-s-1vcpu-1gb"
  region                = "nyc1"
  mysql_main_node_count = 1
  common_tags           = ["production"]
  create_firewall       = true
  firewall_rules        = ["192.168.0.1", "192.168.0.2"]
}
