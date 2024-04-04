variable "vm_count" {
  description = "The number of VM instances to create."
  type        = number
}

variable "name" {
  description = "The name of the VM."
  type        = string
}

variable "target_node" {
  description = "Target node for the VM."
  type        = string
}

variable "vmid" {
  description = "The VM ID for the VM."
  type        = string
}

variable "clone" {
  description = "The clone to use for the VM."
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
  description = "The CPU type for the VM."
  type        = string
}

variable "memory" {
  description = "The amount of memory for the VM (in MB)."
  type        = number
}

variable "disk_size" {
  description = "The size of the disk for the VM."
  type        = string
}

variable "storage" {
  description = "The storage type for the VM."
  type        = string
}

variable "network_model" {
  description = "The network model for the VM."
  type        = string
}

variable "network_bridge" {
  description = "The network bridge for the VM."
  type        = string
}

variable "base_ip" {
  description = "The base IP address for the VM."
  type        = string
}

variable "gateway" {
  description = "The gateway IP address for the VM."
  type        = string
}

variable "ssh_key" {
  description = "The SSH key to inject into the VM."
  type        = string
}
