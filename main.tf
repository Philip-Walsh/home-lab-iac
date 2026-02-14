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
}