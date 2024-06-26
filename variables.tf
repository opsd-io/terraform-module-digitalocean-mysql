variable "cluster_name" {
  description = "The name of the database cluster."
  type        = string
  nullable    = false
}

variable "replica_cluster_name" {
  description = "The name of the replica database cluster."
  type        = string
  default     = null
}

variable "node_count" {
  description = "Number of mysql nodes that will be created."
  type        = number
  default     = 1
}
variable "node_size" {
  description = "The mysql node instance size."
  type        = string
  default     = "db-s-1vcpu-1gb"
}

variable "replica_node_size" {
  description = "The mysql replica node instance size."
  type        = string
  default     = "db-s-1vcpu-1gb"
}

variable "mysql_version" {
  description = "Engine version used by the cluster."
  type        = number
  default     = 8
}

variable "region" {
  description = "DigitalOcean region where the cluster will reside."
  type        = string
  nullable    = false
}

variable "replica_region" {
  description = "DigitalOcean replica region where replica will reside."
  type        = string
  default     = null
}

variable "common_tags" {
  description = "A list of tag names to be applied to the database cluster"
  type        = set(string)
  default     = []
}

variable "firewall_rules" {
  description = "List of trusted sources associated with the cluster"
  type        = set(string)
  default     = []
}

variable "replica_firewall_rules" {
  description = "List of trusted sources associated with the replica cluster"
  type        = set(string)
  default     = []
}

variable "database_users" {
  description = "List of users"
  type        = set(string)
  default     = []
}

variable "replica_enable" {
  description = "Flag to control the replica creation."
  type        = bool
  default     = false
}
