module "example-server-linuxvm" {
  source        = "https://github.com/Terraform-VMWare-Modules/terraform-vsphere-vm"
  version       = "1.0.0"
  vmtemp        = "Ubuntu"
  instances     = 1
  vmname        = "cd-temp"
  vmrp          = "MainCluster/Resources"
  network_cards = ["Name of the POrt Group in vSphere"]
  ipv4 = {
    "Name of the POrt Group in vSphere" = [] # To use DHCP create Empty list for each instance
  }
  dc        = "PacketDatacenter"
  datastore = "datastore1"
}
