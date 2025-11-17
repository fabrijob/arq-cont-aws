project_name = "linuxtips-ecs"

region = "us-east-1"

cluster_name = "linuxtips-ecs"

service_port = 8080

service_name = "linuxtips-app"

service_cpu = 256

service_memory = 512


###SSM ##

ssm_subnet_private_1a = "/linuxtips-vpc/vpc/subnet_private_1a"

ssm_subnet_private_1b = "/linuxtips-vpc/vpc/subnet_private_1b"

ssm_subnet_private_1c = "/linuxtips-vpc/vpc/subnet_private_1c"

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

ssm_listener = "/linuxtips/ecs/tb/listener"

ssm_alb = "/linuxtips/ecs/lb/id"

capabilities = ["EC2"]

environment_variables = [
  {
    name  = "FOO"
    value = "BAR"
  },
  {
    name  = "PING"
    value = "PONG"
  }
]

service_healthcheck = {
  healthy_threshold   = 3
  unhealthy_threshold = 10
  timeout             = 10
  interval            = 60
  matcher             = "200-399"
  path                = "/healthcheck"
  port                = 8080
}

service_launch_type = [
  {
    capacity_provider = "FARGATE"
    weight            = 0
  },
  {
    capacity_provider = "FARGATE_SPOT"
    weight            = 100
  }
]

service_task_count = 3

service_hosts = [
  "app.linuxtips.demo"
]

scale_type = "requests_tracking"

task_minimun = 3

task_maximum = 6

### Autoscaling de CPU

scale_out_cpu_threshold       = 50
scale_out_adjustment          = 2
scale_out_comparison_operator = "GreaterThanOrEqualToThreshold"
scale_out_statistic           = "Average"
scale_out_period              = 60
scale_out_evaluation_periods  = 2
scale_out_cooldown            = 60

scale_in_cpu_threshold       = 30
scale_in_adjustment          = -1
scale_in_comparison_operator = "LessThanOrEqualToThreshold"
scale_in_statistic           = "Average"
scale_in_period              = 60
scale_in_evaluation_periods  = 2
scale_in_cooldown            = 60

scale_tracking_cpu = 50

scale_tracking_requests = 30