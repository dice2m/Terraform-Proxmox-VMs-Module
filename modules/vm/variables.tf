variable "vm_count" {
  description = "The number of VMs to create."
  type        = number
}

variable "vmid" {
  description = "The VM ID for the virtual machine."
  type        = number
}

variable "name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "iso" {
  description = "The ISO image for the virtual machine installation."
  type        = string
}

variable "target_node" {
  description = "The Proxmox node on which the VM is to be created."
  type        = string
}

variable "cores" {
  description = "The number of CPU cores for the VM."
  type        = number
}

variable "sockets" {
  description = "The number of CPU sockets for the VM."
  type        = number
}

variable "cpu" {
  description = "The type of CPU for the VM."
  type        = string
}

variable "memory" {
  description = "The amount of memory (in MB) for the VM."
  type        = number
}

variable "disk_size" {
  description = "The size of the disk for the VM (in GB)."
  type        = string
}

variable "storage" {
  description = "The storage pool to use for the VM disk."
  type        = string
}

variable "base_ip" {
  description = "The base IP address for the VM."
  type        = string
}

variable "gateway" {
  description = "The gateway IP address for the VM network."
  type        = string
}

variable "ssh_key" {
  description = "SSH public key to inject into the VM for key-based authentication."
  type        = string
}

variable "nameserver" {
  description = "The DNS server IP address."
  default     = "192.168.188.1"
}
