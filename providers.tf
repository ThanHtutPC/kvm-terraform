terraform {
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
    }
  }
}

provider "libvirt" {
  uri =  "qemu:///system"
  #uri = "qemu+ssh://root@rocky1.lab.example.com/system?keyfile=/home/thanhtut/.ssh/id_rsa"
}
