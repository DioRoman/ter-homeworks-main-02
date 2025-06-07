variable "vms_resources" {
  type = map(object({        
        platform = string
        cores = number
        memory = number
        core_fraction = number
        hdd_size = number
        hdd_type = string
        preemptible = bool
}))
    default = {
        web = {
            platform      = "standard-v3"
            cores         = 2
            memory        = 2
            core_fraction = 20
            hdd_size = 10
            hdd_type = "network-hdd"
            preemptible     = true
        }
        db = {
            platform      = "standard-v3"
            cores         = 2
            memory        = 4
            core_fraction = 20
            hdd_size = 20
            hdd_type = "network-hdd"
            preemptible     = true
        }
    }
}

variable "vms_metadata" {
 type = object({
   serial-port-enable = number
   ssh-keys           = string
 })
 default = {
     serial-port-enable = 1
     ssh-keys           = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHYMl6i1/RbSwM3vsYIkgYPo+wrPcxc2aZ1AODdCqTPM root@dio-mainpc"
   }
}
