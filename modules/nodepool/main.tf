terraform {
  required_providers {
    proxmox = {
      source  = "thegameprofi/proxmox"
      version = "2.10.0"
    }
  }
}

resource "proxmox_vm_qemu" "k8s_node" {
  count        = var.vm_count
  vmid         = var.vmid + count.index
  name         = "${var.name_prefix}-${format(var.name_format, count.index)}"
  target_node  = element(var.target_nodes, count.index % length(var.target_nodes))
  iso          = "local:iso/ubuntu-22.04.3-live-server-amd64.iso"
  agent        = 1  # Agent always enabled
  cores        = var.cores
  sockets      = var.sockets
  cpu          = var.cpu_type
  memory       = var.memory_size
  scsihw       = var.scsi_hardware
  bootdisk     = var.boot_disk

  disk {
    slot      = 0
    size      = var.disk_size
    type      = "scsi"
    storage   = var.storage_name
    iothread  = 1
  }

  network {
    model  = "virtio"
    bridge = "vmbr17"
  }

  ipconfig0    = "ip=${var.base_ip}${count.index + 1}/24,gw=${var.gateway}"
  sshkeys      = var.ssh_keys  # SSH keys for VMs
  nameserver   = var.nameserver  # DNS server for VMs
  cipassword   = var.cloud_init_password  # Cloud-init password
  ciuser       = var.cloud_init_user  # Cloud-init user
  
  cicustom = {
    user    = base64encode(file("${path.module}/cloud-init-configs/user-data.yml")),
    network = base64encode(file("${path.module}/cloud-init-configs/network-config.yml"))
  }

  lifecycle {
    ignore_changes = [network,]
  }
}
