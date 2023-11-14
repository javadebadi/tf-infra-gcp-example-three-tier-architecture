/*
The IP ranges obtained using the google_netblock_ip_ranges data source 
represent the IP ranges used by Google Cloud Platform (GCP) services globally, 
not specifically for your individual Google Cloud project. 
These are the IP addresses associated with various GCP services, 
and they cover all GCP projects.
*/ 

data "google_netblock_ip_ranges" "iap_forwarders" {
    range_type = "iap-forwarders"
}

data "google_netblock_ip_ranges" "health_checkers" {
    range_type = "health-checkers"
}

