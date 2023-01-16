variable "vault_token" {
  type = string
}
variable "vault_addr" {
  type = string
}
variable "vault_secretpath_winadmin" {
  type = string
}

variable "vault_secretpath_domain" {
  type = string
}

variable "project_id" {
  type    = string
  default = "google"
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
  type    = list(string)
  default = []
}

variable "names" {
  description = "List of names assigned to reserved IPs. One IP is reserved per name."
  type        = list(string)
  default     = []
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

variable "subnetwork" {
  type = string
}

variable "ports" {
  type    = list(string)
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
  type = list(string)
}

variable "vm_name" {
  type = list
  default = []
}

variable "vm_ip" {
  type = list
  default = []
}

variable "ip_vm_default" {
  type = list
  default = [""]
}

variable "ip_vm_blue" {
  type = list
}

variable "ip_vm_green" {
  type = list
}

variable "name_vm_default" {
  type = list
  default = ["default"]
}

variable "name_vm_blue" {
  type = list
}

variable "name_vm_green" {
  type = list
}

variable "machine_type" {
  type = string
}

variable "boot_image_project" {
  type    = string
  default = "clgx-imgfact-repo-glb-prd-f2a0"
}

variable "boot_image" {
  type    = string
  default = "cl-windows-2016"
}

variable "boot_image_name" {
  type    = string
  default = ""
}

variable "boot_disk_size" {
  type        = string
  description = "The size of the image in gigabytes. If not specified, it will inherit the size of its base image"
}

variable "boot_disk_type" {
  type        = string
  description = "The GCE disk type. May be set to pd-standard, pd-balanced, or pd-ssd"
  default     = "pd-standard"
}

variable "additional_disk_size" {
  type        = string
  description = "The size of the image in gigabytes. If not specified, it will inherit the size of its base image"
}

variable "additional_disk_type" {
  type        = string
  description = "The GCE disk type. May be set to pd-standard, pd-balanced, or pd-ssd"
  default     = "pd-standard"
}

variable "additional_disk_create" {
  type = bool
  default = false
}

variable "zone" {
  type = string
}

variable "service_account_email" {
  type        = string
  description = "Service account for the instances"
}

variable "ip_ilb_test" {
  type        = string
  description = "IP address of the test internal load balancer, if empty one will be assigned. Default is empty."
  default     = ""
}

variable "ip_ilb_live" {
  type        = string
  description = "IP address of the test internal load balancer, if empty one will be assigned. Default is empty."
  default     = ""
}

variable "service_account_impers" {
  type        = string
  description = "GCE service account"
  default     = ""
}

variable "FLAVOR" {
  type        = string
  description = "Blue/Green deplyment flavor"
  default     = ""
}

variable "min_cpu_platform" {
  description = "Specifies a minimum CPU platform for the VM instance. Applicable values are 'Intel Haswell' or 'Intel Skylake'"
  default     = "Intel Haswell"
}


