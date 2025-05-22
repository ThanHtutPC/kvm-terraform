output "pool_name" {
  value = libvirt_pool.kvm.name 
}

output "vm_ip" {
  description = "Primary IPv4 addresses of all KVM guests"
  value = flatten([
    for domain in libvirt_domain.default_domain :
    [for iface in domain.network_interface : iface.addresses]
  ])
}

output "terraform_network" {
  value = libvirt_network.terraform_network.name
}

output "vm_details" {
  value = [
    for i in range(var.vm_count) : {
      hostname    = "${var.hostname}-${i + 1}"
      fqdn        = "${var.hostname}-${i + 1}.${var.domain}"
      static_ip   = var.static_ips[i]
      volume_name = libvirt_volume.os_image[i].name
      username_for_ssh = var.username
    }
  ]
}

output "domain_names" {
  value = [for i in range(var.vm_count) : libvirt_domain.default_domain[i].name]
}


