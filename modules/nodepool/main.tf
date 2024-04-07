terraform {
  required_providers {
    proxmox = {
      source  = "thegameprofi/proxmox"
      version = "2.10.0" # Specify the version you want to use
    }
  }
}

resource "proxmox_vm_qemu" "k8s_node" {
  count         = var.vm_count
  vmid          = var.vmid + count.index
  name          = "${var.name_prefix}-${format(var.name_format, count.index)}"
  target_node   = element(var.target_nodes, count.index % length(var.target_nodes))
  clone         = var.template_name
  full_clone    = true
  os_type       = "cloud-init"
  agent         = 1  # Agent always enabled
  cores         = var.cores
  sockets       = var.sockets
  cpu           = var.cpu_type
  memory        = var.memory_size
  scsihw        = var.scsi_hardware
  bootdisk      = var.boot_disk

  disk {
    slot        = 0
    size        = var.disk_size
    type        = "scsi"
    storage     = var.storage_name
    iothread    = var.iothread_enabled ? 1 : 0  # Convert boolean to number based on your preference
  }

  network {
    model       = var.network_model
    bridge      = var.network_bridge
  }

  ipconfig0    = "ip=${var.base_ip}${count.index + 1}/24,gw=${var.gateway}"
  sshkeys      = var.ssh_keys
  nameserver   = var.nameserver
  cipassword   = var.cloud_init_password
  ciuser       = var.cloud_init_user
  
  lifecycle {
    ignore_changes = [
      network,
    ]
  }

  // Example of setting cloud-init user-data
  cicustom = "user=cloud-init:${file("${path.module}/cloud-init.yaml")}"
}
