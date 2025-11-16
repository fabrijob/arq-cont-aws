variable "project_name" {}

variable "region" {}

###SSM ###

variable "ssm_subnet_database_1a" {}

variable "ssm_subnet_database_1b" {}

variable "ssm_subnet_database_1c" {}

variable "ssm_subnet_private_1a" {}

variable "ssm_subnet_private_1b" {}

variable "ssm_subnet_private_1c" {}

variable "ssm_subnet_public_1a" {}

variable "ssm_subnet_public_1b" {}

variable "ssm_subnet_public_1c" {}

variable "ssm_vpc_id" {}

### Loadbalancer ###

variable "Loadbalancer_internal" {}

variable "Loadbalancer_type" {}

### ECS General ##

variable "nodes_ami" {}

variable "node_instance_type" {}

variable "node_volume_size" {}

variable "node_volume_type" {}

variable "cluster_ondemand_min_size" {}

variable "cluster_ondemand_max_size" {}

variable "cluster_ondemand_desired_size" {}

variable "cluster_spot_min_size" {}

variable "cluster_spot_max_size" {}

variable "cluster_spot_desired_size" {}
