region                       = "us-east-1"
project_name                 = "AOS"
vpc_cidr                     = "10.10.0.0/16"
public_subnet_az1_cidr       = "10.10.1.0/24"
public_subnet_az2_cidr       = "10.10.2.0/24"
private_app_subnet_az1_cidr  = "10.10.3.0/24"
private_app_subnet_az2_cidr  = "10.10.4.0/24"
private_data_subnet_az1_cidr = "10.10.5.0/24"
private_data_subnet_az2_cidr = "10.10.6.0/24"
availability_zone            = ["us-east-1a", "us-east-1b", "us-east-1c"]
instance_type                = "t2.medium"
instance_keypair             = "Novakeypair"





# ingress_rules=["22","80","443"]
# engress_rules=["80","443"]
# instance_type="t2.micro"
# ami="ami-006dcf34c09e50022"
# availability_zone=["0","1"]