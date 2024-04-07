terraform {
  required_providers {
    proxmox = {
      source  = "thegameprofi/proxmox"
      version = "2.10.0"
    }
  }
}

resource "proxmox_vm_qemu" "vm" {
  count         = var.vm_count
  vmid          = var.vmid
  name          = var.name
  target_node   = var.target_node
  iso           = "local:iso/ubuntu-22.04.3-live-server-amd64.iso"
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

  network {
    model       = "virtio"
    bridge      = "vmbr17"  # Specify your network bridge.
  }

  # Keeping the IP configuration as you specified
  ipconfig0    = "ip=${var.base_ip}/24,gw=${var.gateway}"
  nameserver   = "192.168.188.1"

  sshkeys      = var.ssh_key

  cicustom = {
    user = base64encode(file("${path.module}/cloud-init/user-data.yml"))
  }

  lifecycle {
    ignore_changes = [network,]
  }
}
