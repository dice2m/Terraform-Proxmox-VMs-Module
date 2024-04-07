module "python_vm" {
  source         = "./modules/vm"
  
  vm_count       = var.python_vm["vm_count"]
  vmid           = var.python_vm["vmid"]
  name           = var.python_vm["name"]
  target_node    = var.python_vm["target_node"]
  iso            = var.python_vm["iso"]
  cores          = var.python_vm["cores"]
  sockets        = var.python_vm["sockets"]
  cpu            = var.python_vm["cpu"]
  memory         = var.python_vm["memory"]
  disk_size      = var.python_vm["disk_size"]
  storage        = var.python_vm["storage"]
  base_ip        = var.python_vm["base_ip"]
  ssh_key        = var.python_vm["ssh_key"]
  gateway        = var.python_vm["gateway"]
}