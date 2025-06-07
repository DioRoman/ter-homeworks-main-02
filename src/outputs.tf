output "VM-stats" {

  value = [

    { vm1 = [yandex_compute_instance.web.name, yandex_compute_instance.web.network_interface[0].nat_ip_address, yandex_compute_instance.web.fqdn ] },
    { vm2 = [yandex_compute_instance.db.name, 
    yandex_compute_instance.db.network_interface[0].nat_ip_address, yandex_compute_instance.db.fqdn ] }

  ]

}