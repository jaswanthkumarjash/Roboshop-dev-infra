locals {
  common_name = "${var.project_name}-${var.environment}"
  common_tags = {
    Name        = local.common_name
    Project     = var.project_name
    Environment = var.environment
  }
  vpc_id = data.aws_ssm_parameter.vpc_id.value
}
