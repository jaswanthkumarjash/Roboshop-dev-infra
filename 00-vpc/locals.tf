locals {
    common_name = "${var.project_name}-${var.environment}"
    common_tags = {
        Terraform = "true"
    }
}