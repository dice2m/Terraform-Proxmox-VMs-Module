variable "vm_count" {
  description = "The number of VMs to create."
  type        = number
}

variable "vmid" {
  description = "The starting VM ID for the VMs. Subsequent VMs will have incrementing IDs starting from this value."
  type        = number
}

variable "name_prefix" {
  description = "Prefix for the VM names."
  type        = string
}

variable "name_format" {
  description = "The format string to apply to VM names, used in conjunction with the name_prefix."
  type        = string
}

variable "target_nodes" {
  description = "A list of Proxmox cluster nodes where the VMs will be created, distributed evenly across these nodes."
  type        = list(string)
}

variable "iso" {
  description = "Path to the ISO image used to install the OS on the VMs."
  type        = string
  default     = "local:iso/your_os_image.iso" # Set a default or make this required by removing the default line.
}

variable "cores" {
  description = "The number of CPU cores for each VM."
  type        = number
}

variable "sockets" {
  description = "The number of CPU sockets for each VM."
  type        = number
}

variable "cpu_type" {
  description = "The type of CPU to use for the VMs."
  type        = string
}

variable "memory_size" {
  description = "The amount of memory (in MB) allocated to each VM."
  type        = number
}

variable "scsi_hardware" {
  description = "The SCSI controller model to use."
  type        = string
}

variable "boot_disk" {
  description = "The identifier of the boot disk (e.g., 'scsi0')."
  type        = string
}

variable "disk_size" {
  description = "The size of the disk for each VM (in GB)."
  type        = string
}

variable "storage_name" {
  description = "The storage pool to use for the VM disks."
  type        = string
}

variable "base_ip" {
  description = "The base IP address for VMs. Subsequent VMs will have IPs incremented from this base."
  type        = string
}

variable "gateway" {
  description = "The gateway IP address for the VM network."
  type        = string
}

variable "ssh_keys" {
  description = "SSH public keys to inject into VMs for key-based authentication."
  type        = string
}

variable "nameserver" {
  description = "The DNS server IP address."
  type        = string
}

variable "cloud_init_password" {
  description = "The default password for the cloud-init user account."
  type        = string
}

variable "cloud_init_user" {
  description = "The username for the cloud-init default account."
  type        = string
}
