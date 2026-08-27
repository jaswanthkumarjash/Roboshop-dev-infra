variable "sg_names" {
    type = list
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend",
        # bastion
        "bastion",
        # frontend load balancer
        "frontend_alb",
        # Backend ALB
        "backend_alb"
    ]
}

variable "sg_description" {
    type = string
    default = "Security group for Roboshop application"
}

variable "project_name" {
  type        = string
  default     = "roboshop"
}

variable "environment" {
  type        = string
  default     = "dev"
}
