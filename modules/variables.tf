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
variable "k8s_node_master_1" {
  description = "Configuration for Kubernetes master node 1"
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

variable "k8s_node_worker_1" {
  description = "Configuration for Kubernetes worker node 1"
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


variable "k8s_node_worker_2" {
   description = "Configuration for Kubernetes worker node 2"
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

variable "k8s_node_worker_3" {
   description = "Configuration for Kubernetes worker node 3"
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
