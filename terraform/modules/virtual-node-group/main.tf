resource "proxmox_virtual_environment_vm" "this" {
  for_each = { for i in range(var.node_count) : tostring(i) => i }

  name      = "${var.node_group_name}-${each.key}"
  node_name = var.virtual_environment_node_name
  tags      = var.tags

  stop_on_destroy = true
  machine         = var.machine_type
  scsi_hardware   = "virtio-scsi-single"
  operating_system {
    type = "l26"
  }

  cpu {
    cores = var.cpu_cores
    type  = "x86-64-v2-AES"
  }

  memory {
    dedicated = var.memory * 1024
  }

  cdrom {
    enabled = true
    file_id = var.cd_rom
  }
  disk {
    datastore_id = var.datastore_id
    interface    = "scsi0"
    ssd          = true
    discard      = "on"
    size         = var.disk_size
    file_format  = "raw"
  }

  network_device {
    bridge = var.bridge_device
  }

  agent {
    enabled = true
    trim    = true
  }

  initialization {
    datastore_id = var.datastore_id
    ip_config {
      ipv4 {
        address = "dhcp"
        # address = var.ipv4_address["address"]
        # gateway = var.ipv4_address["gateway"]
      }
    }
    # dns {
    #   domain  = var.dns["domain"]
    #   servers = var.dns["name_servers"]
    # }
  }
}
