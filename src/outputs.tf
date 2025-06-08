output "VM-stats" {

  value = [

    { web = [yandex_compute_instance.web.name, yandex_compute_instance.web.network_interface[0].nat_ip_address, yandex_compute_instance.web.fqdn ] },
    { db = [yandex_compute_instance.db.name, 
    yandex_compute_instance.db.network_interface[0].nat_ip_address, yandex_compute_instance.db.fqdn ] }

  ]

}