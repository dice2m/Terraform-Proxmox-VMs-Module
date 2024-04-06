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
  description = "Configuration for the Kubernetes worker node pool."
  type = object({
    vm_count           = number
    vmid               = number
    name_prefix        = string
    name_format        = string
    target_nodes       = list(string)
    template_name      = string
    agent_enabled      = bool
    cores              = number
    sockets            = number
    cpu_type           = string
    memory_size        = number
    scsi_hardware      = string
    boot_disk          = string
    disk_size          = string
    storage_name       = string
    iothread_enabled   = bool
    network_model      = string
    network_bridge     = string
    base_ip            = string
    gateway            = string
    ssh_keys           = string
    nameserver         = string
    cloud_init_password = string
    cloud_init_user    = string
  })
}

variable "python_vm" {
   description = "Configuration for Python VM."
  type = object({
    vm_count       = number
    vmid           = number
    target_node    = string
    clone          = string
    vm_name        = string
    cores          = number
    sockets        = number
    cpu            = string
    memory         = number
    disk_size      = string
    storage        = string
    network_model  = string
    network_bridge = string
    base_ip        = string
    ssh_key        = string
    gateway        = string
  })
 }



