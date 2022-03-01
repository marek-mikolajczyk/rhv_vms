resource "ovirt_vm" "tst6_vm" {
    cluster_id  = "6e85d380-b1dc-11eb-ba78-00163e7dc4f2"
    name        = "tst6"
    template_id = "66826d68-529c-4e4b-99c4-8f5d195f69cb"
}

resource "ovirt_nic" "tst6_nic" {
    name            = "eth0"
    vm_id           = ovirt_vm.tst6_vm.id
    vnic_profile_id = "0000000a-000a-000a-000a-000000000398"

}

resource "ovirt_vm_start" "tst6_start" {
  vm_id = ovirt_vm.tst6_vm.id

  # Wait with the start until the NIC is attached.
  depends_on = [ovirt_nic.tst6_nic]
}





resource "ovirt_vm" "tst7_vm" {
  name        = "tst7"
  comment     = "terraform"
    cluster_id  = "6e85d380-b1dc-11eb-ba78-00163e7dc4f2"
    template_id = "66826d68-529c-4e4b-99c4-8f5d195f69cb"
}



resource "ovirt_nic" "tst7_nic" {
    name            = "eth0"
    vm_id           = ovirt_vm.tst7_vm.id
    vnic_profile_id = "0000000a-000a-000a-000a-000000000398"
}

resource "ovirt_vm_start" "tst7_start" {
  vm_id = ovirt_vm.tst7_vm.id

  # Wait with the start until the NIC is attached.
  depends_on = [ovirt_nic.tst7_nic]
}