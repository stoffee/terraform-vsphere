module "example-server-linuxvm" {
  source        = "git::https://github.com/Terraform-VMWare-Modules/terraform-vsphere-vm.git"
#  version       = "1.0.0"
  vmtemp        = "Ubuntu"
  instances     = 1
  vmname        = "cd-temp"
  vmrp          = "MainCluster/Resources"
  network_cards = ["VM Network","Development"]
  ipv4 = {
    "VM Network" = [""] # To use DHCP create Empty list for each instance
  }
  dc        = "PacketDatacenter"
  datastore = "datastore1"
}
