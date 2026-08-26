module "vpc" {
    source = "git::https://github.com/jaswanthkumarjash/Terraform-aws-vpc.git?ref=main"
    cidr_block = var.cidr_block
    project = var.project_name
    environment = var.environment
    vpc_tags = var.vpc_tags
}