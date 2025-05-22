
variable "libvirt_disk_path" {
  description = "path for libvirt pool"
  default     = "/opt/kvm/pool1"
}

variable "os_img-url" {
  description = "Your OS image file path"
  default     = "/home/thanhtut/test/KVM-Terraform/AlmaLinux-9-GenericCloud-latest.x86_64.qcow2"
  #default = "/home/nandahein/Downloads/iso/rhel-8.10-x86_64-kvm.qcow2"
}

variable "username" {
  description = "username for ssh"
  default     = "almalinux"
  #default     = "redhat"
}

variable "hostname" {
  #default     = "rhel8"
  default = "alma9"
  description = "domain name in libvirt, not hostname"
}

variable "os_type_ci" {
  #default = "redhat8"
  default = "alma9"
}

variable "domain" {
  default = "example.com"
}

variable "ip_type" {
  default = "static"
}

variable "memoryMB" {
  default = 1024 * 1
}

variable "cpu" {
  default = 1
}

variable "vm_domain_name" {
  default = "alma9"
  #default = "rhel8"
}

variable "terraform_network" {
  default = "network"
}

variable "vm_count" {
  default = 1
}

variable "static_ips" {
  default = ["192.168.100.60", "192.168.100.61", "192.168.100.63"]
  type        = list(string)
}
