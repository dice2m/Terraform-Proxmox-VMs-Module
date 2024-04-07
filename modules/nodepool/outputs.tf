output "vm_ids" {
  description = "The IDs of the created VMs."
  value       = [for vm in proxmox_vm_qemu.k8s_node : vm.id]
}

output "vm_names" {
  description = "The names of the created VMs."
  value       = [for vm in proxmox_vm_qemu.k8s_node : vm.name]
}

output "vm_ips" {
  description = "The IP addresses of the created VMs."
  value       = [for vm in proxmox_vm_qemu.k8s_node : format("%s%s/24", var.base_ip, vm.count.index + 1)]
}

output "vm_targets" {
  description = "The target nodes on which the VMs are deployed."
  value       = [for vm in proxmox_vm_qemu.k8s_node : vm.target_node]
}

output "ssh_keys_used" {
  description = "The SSH keys injected into the VMs."
  value       = var.ssh_keys
}
