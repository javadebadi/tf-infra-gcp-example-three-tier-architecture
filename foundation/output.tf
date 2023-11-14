output "network_self_link" {
  value = google_compute_network.this.self_link
}

output "subnetwork_self_links" {
  value = {
    for subnet in google_compute_subnetwork.this : subnet.name => subnet.self_link
  }
}

output "health_checkers_ipv4" {
    value = data.google_netblock_ip_ranges.health_checkers.cidr_blocks_ipv4
}

output "iap_forwarders_ipv4" {
    value = data.google_netblock_ip_ranges.iap_forwarders.cidr_blocks_ipv4
}

output "service_account_email" {
  value = google_service_account.this.email
}