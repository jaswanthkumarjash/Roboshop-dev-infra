variable "sg_names" {
    type = list
    default = [
        "mongodb", "redis", "mysql", "rabbitmq",
        # backend
        "catalogue", "user", "cart", "shipping", "payment",
        # frontend
        "frontend"
    ]
}

variable "sg_description" {
    type = string
    default = "Security group for Roboshop application"
}

variable "vpc_id" {
    type = string
}

variable "project_name" {
  type        = string
  default     = "roboshop"
}

variable "environment" {
  type        = string
  default     = "dev"
}
