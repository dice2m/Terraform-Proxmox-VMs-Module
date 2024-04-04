output "vm_ids" {
  value = [for vm in proxmox_vm_qemu.vm : vm.id]
  description = "The IDs of the VM instances."
}

output "vm_names" {
  value = [for vm in proxmox_vm_qemu.vm : vm.name]
  description = "The names of the VM instances."
}

# Assuming you can extract the IP addresses from the resource. This might require adjustment based on actual resource attributes.
output "vm_ip_addresses" {
  value = [for vm in proxmox_vm_qemu.vm : vm.ipconfig0]
  description = "The IP addresses of the VM instances."
}

output "vm_ssh_keys" {
  value = [for vm in proxmox_vm_qemu.vm : vm.sshkeys]
  description = "The SSH keys associated with each VM instance."
}

output "node_allocation" {
  value = [for vm in proxmox_vm_qemu.vm : vm.target_node]
  description = "The Proxmox nodes each VM is allocated to."
}
