module "terraform-module-digitalocean-mysql" {
  source     = "github.com/opsd-io/terraform-module-digitalocean-mysql?ref=1-create-mysql-terraform-module"
  name       = "example-mysql-cluster"
  engine     = "mysql"
  version    = "8"
  size       = "db-s-1vcpu-1gb"
  region     = "nyc1"
  node_count = 1
  tags       = ["production"]
}
