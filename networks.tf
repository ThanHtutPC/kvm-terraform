# Create a network for the VMs
resource "libvirt_network" "terraform_network" {
  name = "network"
  mode = "nat"
  addresses = ["192.168.100.0/24"]
  dhcp {
    enabled = true
    }
  dns {
    enabled = true
  }
  autostart = true
}