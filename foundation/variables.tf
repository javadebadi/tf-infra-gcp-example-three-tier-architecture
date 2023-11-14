variable "project_id" {
  type        = string
  description = "ID of the Google Project"
}

variable "region" {
  type        = string
  description = "Default Region"
  default     = "us-central1"
}

variable "zone" {
  type        = string
  description = "Default Zone"
  default     = "us-central1-a"
}

variable "services" {
  type        = list(string)
  description = "List of Google Cloud Services and APIs to enable for the project"
}

variable "network" {
  type        = string
  description = "Name of the network (Virtual Private Network) to contain created resources"
}

variable "subnets" {
  type        = list(object({
    name          = string
    region        = string
    ip_cidr_range = string
  }))
}

variable "sa_name" {
  type = string
  description = "Name of the Service Account for this infrastructure"
}

variable "roles" {
  type = list(string)
  description = "Name of the IAM roles to be assigned for the service account"
}