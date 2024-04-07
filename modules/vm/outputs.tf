output "vm_ids" {
  description = "List of IDs for the created VMs."
  value       = [for vm in proxmox_vm_qemu.vm : vm.id]
  sensitive   = false
}

output "vm_names" {
  description = "List of names for the created VMs."
  value       = [for vm in proxmox_vm_qemu.vm : vm.name]
  sensitive   = false
}

output "vm_ips" {
  description = "List of IP addresses for the created VMs."
  value       = [for i in range(var.vm_count) : "${var.base_ip}${i + 1}"]
  sensitive   = false
}

output "ssh_public_keys" {
  description = "SSH public keys injected into the VMs."
  value       = var.ssh_key
  sensitive   = true
}

output "vm_target_nodes" {
  description = "The Proxmox nodes on which the VMs are deployed."
  value       = [for vm in proxmox_vm_qemu.vm : vm.target_node]
  sensitive   = false
}
