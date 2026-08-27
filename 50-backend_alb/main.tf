resource "aws_lb" "backend_alb" {
  name               = alb_name
  internal           = true
  load_balancer_type = "application"
  security_groups    = [local.backend_alb_sg_id]
  subnets            = local.private_subnet_ids

  enable_deletion_protection = true

  tags = merge(
    local.common_tags,
    {
        Name = "${local.common_name}-backend-alb"
    }
  )
}