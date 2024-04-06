terraform {
  required_providers {
    proxmox = {
      source  = "thegameprofi/proxmox"
      version = "2.10.0" # Specify the version you want to use
    }
  }
}

resource "proxmox_vm_qemu" "vm" {
  count         = var.vm_count
  vmid          = var.vmid
  name          = var.name
  target_node   = var.target_node
  clone         = var.clone
  full_clone    = true
  os_type       = "cloud-init"
  agent         = 1
  cores         = var.cores
  sockets       = var.sockets
  cpu           = var.cpu
  memory        = var.memory
  scsihw        = "virtio-scsi-pci"
  bootdisk      = "scsi0"

  disk {
    slot        = 0
    size        = var.disk_size
    type        = "scsi"
    storage     = var.storage
    iothread    = 1
  }

  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  network {
    model       = var.network_model
    bridge      = var.network_bridge
  }

  ipconfig0 = "ip=${var.base_ip}/24,gw=${var.gateway}"
  nameserver = "192.168.188.1"

  sshkeys = var.ssh_key
}