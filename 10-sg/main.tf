module "sg" {
    count = length(var.sg_names)
    source = "git::https://github.com/jaswanthkumarjash/terraform-aws-sg.git?ref=main"
    sg_name = var.sg_names[count.index]
    sg_description = "${var.sg_description}-created for ${var.sg_names[count.index]}"
    vpc_id = local.vpc_id
    sg_tags = merge(
        local.common_tags,
        {
            Name = "${local.common_name}-${var.sg_names[count.index]}-sg"
        }
    )
}