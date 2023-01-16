
# Project id for dev env
project_id             = "protean-horizon-357409"
region                 = "us-west1"
zone                   = "us-west1-b"
service_account_email  = "gcp202301@protean-horizon-357409.iam.gserviceaccount.com"
credentials = "gcpproject-202301.json"

# Network Settings
network            = "clgx-vpc-nonprd"
subnetwork         = "clgx-app-us-w1-app-dev-subnet"
subnetworks        = ["clgx-app-us-w1-app-dev-subnet"]
subnetwork_project = "clgx-network-nonprd-4dd3"


# Unmanaged Instance Group
machine_type      = "n1-standard-4"
min_cpu_platform  = "Intel Haswell"

boot_disk_type      = "pd-standard"
boot_disk_size      = 200
boot_image_project  = "clgx-imgfact-repo-glb-prd-f2a0"
additional_disk_type = "pd-standard"
additional_disk_size = 100
additional_disk_create = true
# If boot_image_name is commented out, latest image from image family specified in boot_image will be installed.
#boot_image_name     = "cl-windows-server-2016-dc-v20210514-514"
boot_image          = "cl-windows-2016"
network_tags        = ["allow-int-http", "allow-winrm", "allow-rdp", "allow-dl-health-checks", "allow-jenkins-deploy"]

## label params--found in the GCP project
application             = "app-server-vm"
purpose                 = "app-server-vm" 
organization            = "edg"
primary_company_code    = "1050"
primary_cost_center     = "253901"
chargeback_company_code = "1060"
chargeback_cost_center  = "409707"
case_wise_appid         = "a43e60a5099911ec81db060a546c81f2"
environment             = "dev"
financial_owner         = "nekumar_at_corelogic_dot_com"
tech_lead               = "mferreira_at_corelogic_dot_com"
resolver_group          = "EDG_Data_Technology_team" #need to be confirmed
ad_group                = "cets-gg-sso-isc-gcp-clareity_dot_nonprod-devsecops"
gcp_project_name        = "clgx-cmsfactory-app-dev"
tier                    = "app"
backup                  = "no" #unknown
technology              = "win"
