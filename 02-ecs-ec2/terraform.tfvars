project_name = "linuxtips-ecs"

region = "us-east-1"

###SSM ##

ssm_subnet_database_1a = "/linuxtips-vpc/vpc/subnet_database_1a"

ssm_subnet_database_1b = "/linuxtips-vpc/vpc/subnet_database_1b"

ssm_subnet_database_1c = "/linuxtips-vpc/vpc/subnet_database_1c"

ssm_subnet_private_1a = "/linuxtips-vpc/vpc/subnet_private_1a"

ssm_subnet_private_1b = "/linuxtips-vpc/vpc/subnet_private_1b"

ssm_subnet_private_1c = "/linuxtips-vpc/vpc/subnet_private_1c"

ssm_subnet_public_1a = "/linuxtips-vpc/vpc/subnet_public_1a"

ssm_subnet_public_1b = "/linuxtips-vpc/vpc/subnet_public_1b"

ssm_subnet_public_1c = "/linuxtips-vpc/vpc/subnet_public_1c"

ssm_vpc_id = "/linuxtips-vpc/vpc/vpc_id"

###Loadbalancer ###

Loadbalancer_internal = false

Loadbalancer_type = "application"

### ECS General ##

nodes_ami = "ami-01a5c04f00e1395d3"

node_instance_type = "t3.micro"

node_volume_size = "50"

node_volume_type = "gp3"

cluster_ondemand_min_size = 1

cluster_ondemand_max_size = 2

cluster_ondemand_desired_size = 1

cluster_spot_min_size = 1

cluster_spot_max_size = 2

cluster_spot_desired_size = 1