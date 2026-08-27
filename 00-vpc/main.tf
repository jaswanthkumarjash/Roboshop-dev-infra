module "vpc" {
    source = "git::https://github.com/jaswanthkumarjash/Terraform-aws-vpc.git?ref=main"
    cidr_block = var.cidr_block
    project = var.project_name
    environment = var.environment
    vpc_tags = merge(
        var.vpc_tags,
        local.common_name,
        {
            Name = "${local.common_name}-vpc"
        }
    )
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    database_subnet_cidr = var.database_subnet_cidr
}