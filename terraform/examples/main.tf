module "cluster" {
  source = "../../modules/cluster"

  virtual_environment_node_name   = var.virtual_environment_node_name
  cluster_name                    = var.cluster_name
  talos_version                   = var.talos_version
  tags                            = var.tags
  virtual_environment_image_store = var.image_store
  virtual_environment_data_store  = var.data_store
  # ipv4_address                    = var.ipv4_address
  # dns                             = var.dns
  controlplane_node_count = var.controlplane_node_count
  controlplane_cpu_cores  = var.controlplane_cpu_cores
  controlplane_memory     = var.controlplane_memory
  controlplane_disk_size  = var.controlplane_disk_size
  dataplane_node_count    = var.dataplane_node_count
  dataplane_cpu_cores     = var.dataplane_cpu_cores
  dataplane_memory        = var.dataplane_memory
  dataplane_disk_size     = var.dataplane_disk_size
}

output "ipv4" {
  value = module.cluster.ipv4_address
}
