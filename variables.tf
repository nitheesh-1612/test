variable "project_id" {
  type    = string
  default = ""
}

variable "region" {
  type    = string
  default = ""
}

variable "subnet_region" {
  type    = string
  default = ""
}

variable "subnetwork_project" {
  type    = string
  default = ""
}

variable "subnet_name" {
  type    = list
  default = []
}

variable "names" {
  description = "List of names assigned to reserved IPs. One IP is reserved per name."
  type        = list
  default     = []
}

variable "service_account" {
  description = "Service account to execute terraform script."
  type        = string
  default     = ""
}


variable "purpose" {
  type = string
}

variable "organization" {
  type = string
}

variable "primary_company_code" {
  type = string
}

variable "primary_cost_center" {
  type = string
}

variable "chargeback_company_code" {
  type = string
}

variable "chargeback_cost_center" {
  type = string
}

variable "case_wise_appid" {
  type = string
}

variable "environment" {
  type = string
}

variable "financial_owner" {
  type = string
}

variable "tech_lead" {
  type = string
}

variable "resolver_group" {
  type = string
}

variable "tier" {
  type = string
}

variable "backup" {
  type = string
}

variable "technology" {
  type = string
}

variable instance_count {
  description = "The target number of instances to create in the region."
  default     = 1
}

variable "subnetwork" {
  type = string
}

variable "network_ip_reserve" {
  description = "Whether to reserve an internal static ip. Only set to false if you are using an existing static ip."
  default     = false
}

variable "network_ip" {
  description = "Internal static ip to assign instance. Only applies when not using instance group."
  type        = list
  default     = []
}

variable "ports" {
  type    = list
  default = []
}
variable "update_policy_type" {
  type    = string
  default = ""
}

variable "update_policy_minimal_action" {
  type    = string
  default = ""
}

variable "application" {
  type = string
}
variable "network" {
  type = string
}

variable "network_tags" {
  type = list
}

variable "machine_type" {
  type = string
}

variable "gcp_project_name" {
  description = "See description in repository: corelogic/terraform-null-label"
  type        = string
}

variable "service_account_email" {
  description = "Service account for the instances"
}

variable "boot_disk_size" {
  description = "The size of the image in gigabytes. If not specified, it will inherit the size of its base image"
}

variable "boot_disk_type" {
  description = "The GCE disk type. May be set to pd-standard or pd-ssd"
  default     = "pd-ssd"
}

variable "name" {
  description = "The name to give the instances"
}


variable "zones" {
  type        = list
  description = "List of zones within the region to deploy the instances in"
}
