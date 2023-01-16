/******************************************
  Google provider configuration
 *****************************************/

provider "google" {
  version = "~> 3.51.1"
  credentials = "${file("gcpproject-202301.json")}"
}

/******************************************
  Google Beta provider configuration
 *****************************************/

provider "google-beta" {
  version = "~> 3.51.1"
  region  = var.region
  project = var.project_id
}
