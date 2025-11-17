variable "region" {}

variable "project_name" {}

variable "service_name" {}

variable "cluster_name" {}

variable "service_port" {}

variable "service_cpu" {}

variable "service_memory" {}

variable "ssm_listener" {}

variable "ssm_subnet_private_1a" {}

variable "ssm_subnet_private_1b" {}

variable "ssm_subnet_private_1c" {}

variable "ssm_vpc_id" {}

variable "ssm_alb" {}

variable "environment_variables" {
  type = list(map(string))
}

variable "capabilities" {
  type = list(string)
}

variable "service_healthcheck" {}

variable "service_launch_type" {}

variable "service_task_count" {}

variable "service_hosts" {}

variable "scale_type" {}

variable "task_minimun" {}

variable "task_maximum" {}

variable "scale_out_cpu_threshold" {}

variable "scale_out_adjustment" {}

variable "scale_out_comparison_operator" {}

variable "scale_out_statistic" {}

variable "scale_out_period" {}

variable "scale_out_evaluation_periods" {}

variable "scale_out_cooldown" {}

variable "scale_in_cpu_threshold" {}

variable "scale_in_adjustment" {}

variable "scale_in_comparison_operator" {}

variable "scale_in_statistic" {}

variable "scale_in_period" {}

variable "scale_in_evaluation_periods" {}

variable "scale_in_cooldown" {}

variable "scale_tracking_cpu" {}

variable "scale_tracking_requests" {}

variable "container_image" {}