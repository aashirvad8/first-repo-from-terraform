module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 2.3"

    project_id   = var.project_name
    network_name = var.custom_network
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-01"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-central1"
        }
    ]


}
