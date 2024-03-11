module "Digitalocean_mysql" {
  source                = "github.com/opsd-io/terraform-module-digitalocean-mysql?ref=3c8b1174c1aa48ee938108317d6b89ad87c770cf"
  databasename          = "example-mysql-cluster"
  engine                = "mysql"
  version_of_engine     = "8"
  mysql_main_size       = "db-s-1vcpu-1gb"
  region                = "nyc1"
  mysql_main_node_count = 1
  common_tags           = ["production"]
}
