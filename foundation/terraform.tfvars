project_id = "nice-beanbag-402218"
region = "northamerica-northeast2"
zone = "northamerica-northeast2-a"
services = ["compute", "cloudresourcemanager", "sqladmin", "iam", "secretmanager"]
network = "three-tier-network"
subnets = [
  {
    name          = "toronto"
    region        = "northamerica-northeast2"
    ip_cidr_range = "192.168.1.0/24"
  },
  {
    name          = "montreal"
    region        = "northamerica-northeast1"
    ip_cidr_range = "192.168.2.0/24"
  },
]
sa_name = "application-server-sa"