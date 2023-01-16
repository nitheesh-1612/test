data "google_compute_image" "my_image" {
  family  = "windows-2022"
  project = "windows-cloud"
}

module "instance" {
  source                = "git::https://github.com/nitheesh-1612/test"
  project_id            = var.project_id
  region                = var.region
  zones                 = var.zones
  name                  = var.name
  use_random_id         = false
  machine_type          = var.machine_type
  network_tags          = var.network_tags
  ip_forwarding         = false
  boot_disk_type        = var.boot_disk_type
  boot_disk_size        = var.boot_disk_size
  boot_disk_auto_delete = true
  network               = var.network
  network_public        = false
  subnetwork_project    = var.subnetwork_project
  subnetwork            = var.subnetwork
  service_account_email = var.service_account_email
  instance_count        = var.instance_count
  network_ip_reserve    = var.network_ip_reserve
  network_ip            = var.network_ip

  static_ip_reserve     = true
  use_count_id          = true  

  # CentOS image from CL Image Factory
  boot_image = data.google_compute_image.my_image.self_link

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
  gcp_project_name        = var.gcp_project_name
  ad_group                = ""
}