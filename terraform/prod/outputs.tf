output "app_external_ip" {
  value = "${module.app.external_ip}"
}

output "db_external_ip" {
  value = "${module.db.external_ip}"
}

output "db_internal_ip" {
  value = "${module.db.internal_ip}"
}

# output "load_balancer_ip" {
#   value = "${google_compute_forwarding_rule.default.ip_address}"
# }

