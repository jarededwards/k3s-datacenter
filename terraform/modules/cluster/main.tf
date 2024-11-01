module "controlplane_nodes" {
  source = "../virtual_machine_group"

  virtual_environment_node_name = var.virtual_environment_node_name
  node_count                    = var.controlplane_node_count
  node_group_name               = "${var.cluster_name}-ctrpln"
  tags                          = var.tags
  cpu_cores                     = var.controlplane_cpu_cores
  memory                        = var.controlplane_memory
  cd_rom                        = proxmox_virtual_environment_download_file.this.id
  datastore_id                  = var.virtual_environment_data_store
  disk_size                     = var.controlplane_disk_size
  # ipv4_address_start            = locals.controlplane_ipv4_address_start
  # ipv4_gateway                  = var.ipv4_address["gateway"]
  # dns                           = var.dns
}


module "dataplane_nodes" {
  source = "../virtual_machine_group"

  virtual_environment_node_name = var.virtual_environment_node_name
  node_count                    = var.dataplane_node_count
  node_group_name               = "${var.cluster_name}-datapln"
  tags                          = var.tags
  cpu_cores                     = var.dataplane_cpu_cores
  memory                        = var.dataplane_memory
  cd_rom                        = proxmox_virtual_environment_download_file.this.id
  datastore_id                  = var.virtual_environment_data_store
  disk_size                     = var.dataplane_disk_size
  # ipv4_address_start            = locals.controlplane_ipv4_address_start
  # ipv4_gateway                  = var.ipv4_address["gateway"]
  # dns                           = var.dns
}
