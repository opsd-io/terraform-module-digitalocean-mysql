module "Digitalocean_mysql" {
  source                = "github.com/opsd-io/terraform-module-digitalocean-mysql?ref=1-create-mysql-terraform-module"
  databasename          = "example-mysql-cluster"
  engine                = "mysql"
  version_of_engine     = "8"
  mysql_main_size       = "db-s-1vcpu-1gb"
  region                = "nyc1"
  mysql_main_node_count = 1
  common_tags           = ["production"]
  # create_firewall       = true
  firewall_rules = ["192.168.0.1", "192.168.0.2", "192.168.0.8"]
}
