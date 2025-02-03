###cloud vars

variable "vm_web_name" {
  type        = string
  default     = "netology-develop-platform-web"
  description = "web_name"
}
#
variable "vm_web_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "web_platform_id"
}

#variable "vm_web_cores" {
#  type        = number
#  default     = 2
#  description = "Numbers CPU"
#}

#variable "vm_web_memory" {
#  type        = number
#  default     = 1
#  description = "Memory (Gb)"
#}

#variable "vm_web_core_fraction" {
#  type        = number
#  default     = 20
#  description = "Core procent"
#}
#
variable "vm_web_preemptible" {
  type        = bool
  default     = true
  description = "Preemptible"
}
#
variable "vm_web_nat" {
  type        = bool
  default     = true
#  default     = false
  description = "NAT"
}

#variable "vm_web_serial-port-enable" {
#  type        = number
#  default     = 1
#  description = "Serial-port-enable"
#}

variable "cloud_id" {
  type        = string
  default     = "b1gft7eo5qqq0fcq5no8"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "folder_id" {
  type        = string
  default     = "b1gpa9779vdb6gun3kkh"
  description = "https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}

variable "default_zone" {
  type        = string
  default     = "ru-central1-a"
  description = "https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
#
variable "default_cidr" {
  type        = list(string)
  default     = ["10.0.1.0/24"]
  description = "https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
#
variable "vpc_name" {
  type        = string
  default     = "develop"
  description = "VPC network & subnet name"
}


###ssh vars

#variable "vms_ssh_root_key" {
#  type        = string
#  default     = "ssh-ed25519 #AAAAC3NzaC1lZDI1NTE5AAAAIPq2ehfndiw1iqBtzmvF8EiJc60urVjRblr0PBO5BxDb root@sss-VMware"
#  description = "ssh-keygen -t ed25519"
#}

###cloud vars DB

#variable "vm_db_name" {
#  type        = string
#  default     = "netology-develop-platform-db"
#  description = "vm_db_name"
#}
#
variable "vm_db_platform_id" {
  type        = string
  default     = "standard-v3"
  description = "vm_db_platform_id"
}

#variable "vm_db_cores" {
#  type        = number
#  default     = 2
#  description = "vm_db_Numbers CPU"
#}

#variable "vm_db_memory" {
#  type        = number
#  default     = 2
#  description = "vm_db_Memory (Gb)"
#}

#variable "vm_db_core_fraction" {
#  type        = number
#  default     = 20
#  description = "vm_db_Core procent"
#}
#
variable "vm_db_preemptible" {
  type        = bool
  default     = true
  description = "vm_db_Preemptible"
}
#
variable "vm_db_nat" {
  type        = bool
  default     = true
#  default     = false
  description = "vm_db_NAT"
}

#variable "vm_db_serial-port-enable" {
#  type        = number
#  default     = 1
#  description = "vm_db_Serial-port-enable"
#}

variable "vm_db_cloud_id" {
  type        = string
  default     = "b1gft7eo5qqq0fcq5no8"
  description = "vm_db_https://cloud.yandex.ru/docs/resource-manager/operations/cloud/get-id"
}

variable "vm_db_folder_id" {
  type        = string
  default     = "b1gpa9779vdb6gun3kkh"
  description = "vm_db_https://cloud.yandex.ru/docs/resource-manager/operations/folder/get-id"
}
#
variable "vm_db_default_zone" {
  type        = string
  default     = "ru-central1-b"
  description = "vm_db_https://cloud.yandex.ru/docs/overview/concepts/geo-scope"
}
#
variable "vm_db_default_cidr" {
  type        = list(string)
  default     = ["10.0.2.0/24"]
  description = "vm_db_https://cloud.yandex.ru/docs/vpc/operations/subnet-create"
}
#
variable "vm_db_vpc_name" {
  type        = string
  default     = "develop2"
  description = "vm_db_VPC network & subnet name"
}
#
variable "os_family" {
  type        = string
  default     = "ubuntu-2004-lts"
  description = "os_family"
}

variable "vm_name_coren" {
  type        = string
  default     = "netology-develop-platform"
  description = "vm_name_coren"
}

variable "vm_name_oconch_web" {
  type        = string
  default     = "web"
  description = "vm_name_oconch_web"
}

variable "vm_name_oconch_db" {
  type        = string
  default     = "db"
  description = "vm_name_oconch_db"
}

variable "vms_resources" {
  type        = map(object({
    cores         = number
    memory        = number
    core_fraction = number
  }))
  default = {}
  description = "VM resource settings"
}
#
variable "metadata" {
  type        = map(any)
  description = "ssh-keygen -t ed25519"
}
