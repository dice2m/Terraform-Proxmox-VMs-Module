variable "vm_count" {
  description = "The number of VMs to create."
  type        = number
}

variable "vmid" {
  description = "The starting VM ID. Subsequent VMs will have incrementing IDs."
  type        = number
}

variable "name_prefix" {
  description = "The prefix for the VM names."
  type        = string
}

variable "name_format" {
  description = "The format string to use for naming VMs, applied after the prefix."
  type        = string
  default     = "%03d"
}

variable "target_nodes" {
  description = "A list of Proxmox cluster nodes where the VMs will be created, distributed evenly across these nodes."
  type        = list(string)
}

variable "template_name" {
  description = "The VM template name to clone for creating new VMs."
  type        = string
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

variable "iothread_enabled" {
  description = "Enable or disable IO threads. Set to true to enable, false to disable."
  type        = bool
  default     = true
}

variable "network_model" {
  description = "The model of network device to use."
  type        = string
}

variable "network_bridge" {
  description = "The network bridge to attach the VM's network interface to."
  type        = string
}

variable "base_ip" {
  description = "The base IP address for the first VM. Subsequent VMs will increment from this base."
  type        = string
}

variable "gateway" {
  description = "The gateway IP address for all VMs."
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
