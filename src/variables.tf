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

variable "test" {
    type = map(object({
        ssh     = string
        ip_int  = string
    }))
    default = {
         dev1 = {
            ssh    = "ssh -o 'StrictHostKeyChecking=no' ubuntu@62.84.124.117"
            ip_int = "10.0.1.7"
        }
        dev2 = {
            ssh    = "ssh -o 'StrictHostKeyChecking=no' ubuntu@84.252.140.88"
            ip_int = "10.0.2.29",
        }
        prod1 = {
            ssh    = "ssh -o 'StrictHostKeyChecking=no' ubuntu@51.250.2.101"
            ip_int = "10.0.1.30",
        }
    }
}
