variable "virtual_environment_node_name" {
  type        = string
  description = "Proxmox node to create virtual machine in."
}

variable "virtual_environment_image_store" {
  type = string
}

variable "virtual_environment_data_store" {
  type = string
}

variable "cluster_name" {
  type = string
}

variable "talos_version" {
  type = string
}

variable "tags" {
  type = list(string)
}

variable "controlplane_node_count" {
  type = number
}

variable "controlplane_cpu_cores" {
  type = string
}

variable "controlplane_memory" {
  type = string
}

variable "controlplane_disk_size" {
  type = string
}

variable "dataplane_node_count" {
  type = number
}

variable "dataplane_cpu_cores" {
  type = string
}

variable "dataplane_memory" {
  type = string
}

variable "dataplane_disk_size" {
  type = string
}

# variable "ipv4_address" {
#   type = object({
#     method  = string
#     address = optional(string)
#     gateway = optional(string)
#   })
#   // validation
# }

# variable "dns" {
#   type = object({
#     domain       = string
#     name_servers = list(string)
#   })
# }



############################


# variable "virtual_machine" {
#   type = object({
#     name             = string
#     description      = string
#     tags             = list(string)
#     id               = number
#     node_name        = string
#     disk_id          = string
#     memory           = number
#     cpu_cores        = number
#     cpu_type         = string // default
#     datastore_id     = string
#     disk_size        = number
#     bridge_device    = string
#     ipv4_address     = string
#     ipv4_gateway     = string
#     ipv4_nameservers = string // default 8.8.8.8
#     machine_type     = optional(string, "q35")
#   })
# }


# variable "virtual_environment_private_key" {
#   type = string
# }

# variable "virtual_environment_username" {
#   type = string
# }
