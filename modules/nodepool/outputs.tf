output "node_ids" {
  description = "List of IDs for the created Kubernetes nodes."
  value       = [for node in proxmox_vm_qemu.k8s_node : node.id]
}

output "node_names" {
  description = "List of names for the created Kubernetes nodes."
  value       = [for node in proxmox_vm_qemu.k8s_node : node.name]
}

output "node_ips" {
  description = "List of IP addresses for the created Kubernetes nodes. Assumes DHCP is used for IP configuration."
  value       = [for node in proxmox_vm_qemu.k8s_node : trimsuffix(node.ipconfig0, "/24")]
}

output "node_targets" {
  description = "List of Proxmox target nodes on which the VMs are deployed."
  value       = [for node in proxmox_vm_qemu.k8s_node : node.target_node]
}
