output "name_web" {
  value = yandex_compute_instance.platform.name
}
output "name_db" {
  value = yandex_compute_instance.netology-develop-platform-db.name
}
output "ip_web" {
  value = yandex_compute_instance.platform.network_interface.0.nat_ip_address
}
output "ip_db" {
  value = yandex_compute_instance.netology-develop-platform-db.network_interface.0.nat_ip_address
}
output "zone_web" {
  value = yandex_compute_instance.platform.zone
}
output "zone_db" {
  value = yandex_compute_instance.netology-develop-platform-db.zone
}
