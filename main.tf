resource "proxmox_virtual_environment_vm" "workstation" {
  name      = "workstation-pro"
  node_name = var.node_name
  vm_id     = 100

  cpu {
    cores = 8
    type  = "host"
  }

  memory {
    dedicated = 16384
  }

  network_device {
    bridge = "vmbr0"
  }

  # hostpci {
  #   device = "hostpci0"
  #   id     = "0000:01:00.0" # todo: set correct
  #   pcie   = true
  #   rombar = true
  # }
}