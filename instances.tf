data "google_compute_image" "my_image" {
  family  = "windows-2022"
  project = "windows-cloud"
}

module "instance" {
  source                    = "git::https://github.com/nitheesh-1612/test"
  project_id                = var.project_id
  region                    = var.region
  vm_name                   = var.vm_name
  vm_ip                     = var.vm_ip
  network_tags              = var.network_tags
  network                   = var.network
  subnetwork_project        = var.subnetwork_project
  subnetwork                = var.subnetwork
  service_account_email     = var.service_account_email
  machine_type              = var.machine_type
  zone                      = var.zone
  boot_image_project        = var.boot_image_project
  boot_image                = var.boot_image
  boot_image_name           = var.boot_image_name
  boot_disk_type            = var.boot_disk_type
  boot_disk_size            = var.boot_disk_size
  additional_disk_type      = var.additional_disk_type
  additional_disk_size      = var.additional_disk_size
  additional_disk_create    = var.additional_disk_create

  
  # Labels
  application             = var.application
  purpose                 = var.purpose
  organization            = var.organization
  primary_company_code    = var.primary_company_code
  primary_cost_center     = var.primary_cost_center
  chargeback_company_code = var.chargeback_company_code
  chargeback_cost_center  = var.chargeback_cost_center
  case_wise_appid         = var.case_wise_appid
  environment             = var.environment
  financial_owner         = var.financial_owner
  tech_lead               = var.tech_lead
  resolver_group          = var.resolver_group
  tier                    = var.tier
  backup                  = var.backup
  technology              = var.technology
}
