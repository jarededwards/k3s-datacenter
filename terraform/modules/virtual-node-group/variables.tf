variable "virtual_environment_node_name" {
  type        = string
  description = "Proxmox node to create virtual machine in."
}

variable "node_group_name" {
  type = string
}

variable "node_count" {
  type = number
}

variable "tags" {
  type = list(string)
}

variable "machine_type" {
  type    = string
  default = "q35"
}

variable "cpu_cores" {
  type        = number
  description = "Number of CPU cores. NUMA not supported"
}

variable "memory" {
  type        = number
  description = "Memory in GB. Type int"
}

variable "cd_rom" {
  type        = string
  description = "Talos ISO image file"
}

variable "datastore_id" {
  type = string
}

variable "disk_size" {
  type        = number
  description = "Root disk size in GB"
}

variable "bridge_device" {
  type    = string
  default = "vmbr0"
}

# variable "ipv4_address_start" {
#   type = string
#   // TODO: add validation
# }

# variable "ipv4_gateway" {
#   type = string
#   // TODO: add validation
# }

# variable "dns" {
#   type = object({
#     domain       = string
#     name_servers = list(string)
#   })
# }
