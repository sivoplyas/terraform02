vms_resources = {
  web = {
    cores         = 2
    memory        = 1
    core_fraction = 20
  },
  db = {
    cores         = 2
    memory        = 2
    core_fraction = 20
  }
}

metadata = {
  serial-port-enable = 1
  ssh-keys           = "ubuntu:ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIPq2ehfndiw1iqBtzmvF8EiJc60urVjRblr0PBO5BxDb root@sss-VMware"
}

