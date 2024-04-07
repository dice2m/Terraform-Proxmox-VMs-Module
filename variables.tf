variable "pm_api_url" {
  description = "URL for the Proxmox API."
  type        = string
}

variable "pm_api_token_id" {
  description = "Proxmox API token ID."
  type        = string
}

variable "pm_api_token_secret" {
  description = "Proxmox API token secret."
  type        = string
}

variable "pm_tls_insecure" {
  description = "Whether to skip TLS verification when connecting to the Proxmox API."
  type        = bool
}

variable "k8s_worker_nodepool" {
  description = "Configuration parameters for the Kubernetes worker node pool."
  type = object({
    vm_count            = number
    vmid                = number
    name_prefix         = string
    name_format         = string
    target_nodes        = list(string)
    cores               = number
    sockets             = number
    cpu_type            = string
    memory_size         = number
    scsi_hardware       = string
    boot_disk           = string
    disk_size           = string
    storage_name        = string
    base_ip             = string
    gateway             = string
    ssh_keys            = string
    nameserver          = string
    cloud_init_password = string
    cloud_init_user     = string
  })
}

variable "python_vm" {
  description = "Configuration parameters for the Python VM."
  type = object({
    vm_count       = number
    vmid           = number
    name           = string
    target_node    = string
    iso            = string # ISO image for VM installation
    cores          = number
    sockets        = number
    cpu            = string
    memory         = number
    disk_size      = string
    storage        = string
    base_ip        = string
    ssh_key        = string
    gateway        = string
  })
}