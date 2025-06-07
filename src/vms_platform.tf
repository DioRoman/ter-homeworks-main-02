###cloud vars

variable "vm_web_cloud_id" {
  type        = string
  default     = "b1g2uh898q9ekgq43tfq"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "vm_web_folder_id" {
  type        = string
  default     = "b1g22qi1cc8rq4avqgik"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

###net vars

variable "vm_web_default_zone" {
  type        = string
  default     = "ru-central1-d"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_web_zone_b" {
  type        = string
  default     = "ru-central1-b"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}

variable "vm_web_default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}

variable "vm_web_vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}

variable "vm_db_vpc_name" {
  type        = string
  default     = "db"
  description = "VPC network & subnet name"
}

variable "vm_web_image_family" {
  type        = string
  default     = "ubuntu-2404-lts"
}

###Instance vars

# variable "vm_web_platform" {
#   type        = string
#  default     = "web"
# }

variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
}

# variable "vm_web_cores" {
#   type        = number
#   default     = 2
# }

# variable "vm_web_memory" {
#   type        = number
#  default     = 1
# }

# variable "vm_web_core_fraction" {
#   type        = number
#   default     = 20
# }

# variable "vm_web_preemptible" {
#   type        = bool
#   default     = true
# }

variable "vm_web_nat" {
  type        = bool
  default     = false
}

###Instance vars

#variable "vm_db_platform" {
#  type        = string
#  default     = "db"
#}

variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
}

variable "vm_db_zone" {
  type        = string
  default     = "ru-central1-b"
}

variable "vm_db_nat" {
  type        = bool
  default     = false
}

# variable "vm_db_cores" {
#  type        = number
# default     = 2
# }

#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#}

#variable "vm_db_preemptible" {
#  type        = bool
#  default     = true
#}

###ssh vars

#variable "vm_web_vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHYMl6i1/RbSwM3vsYIkgYPo+wrPcxc2aZ1AODdCqTPM root@dio-mainpc"
#  description = "ssh-keygen -t ed25519"
#}

###Name vars

variable "vm_web" {
  type        = string
  default     = "web"
}

variable "vm_netology" {
  type        = string
  default     = "netology"
}

variable "vm_db" {
  type        = string
  default     = "db"
}