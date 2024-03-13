variable "databasename" {
  description = "The name of the database cluster. Required"
  type        = string
  nullable    = false
}
variable "mysql_main_node_count" {
  description = "Number of mysql nodes that will be created. Required"
  type        = number
  default     = 1
}

variable "engine" {
  description = "Database engine used by the cluster. Required"
  type        = string
  default     = "mysql"
}

variable "mysql_main_size" {
  description = "The mysql node instance size. Required"
  type        = string
  default     = "db-s-1vcpu-1gb"
}
variable "version_of_engine" {
  description = "Engine version used by the cluster. Required"
  type        = number
  default     = 8
}

variable "region" {
  description = "DigitalOcean region where the cluster will reside. Required"
  type        = string
  nullable    = false
}
variable "common_tags" {
  description = "A list of tag names to be applied to the database cluster"
  type        = set(string)
}
variable "create_firewall" {
  type        = bool
  default     = false
  description = "True mean that firewall should be created"
}
