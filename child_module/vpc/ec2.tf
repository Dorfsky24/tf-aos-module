# EC2 Instance
resource "aws_instance" "myec2vm" {
  ami = data.aws_ami.amzlinux2.id
  instance_type =  var.instance_type       
 # user_data = file("${path.module}/app1-install.sh")
  key_name = var.instance_keypair
  vpc_security_group_ids = [aws_security_group.vpc-ssh.id, aws_security_group.vpc-web.id]
  # Create EC2 Instance in all Availabilty Zones of a VPC
  for_each = toset(data.aws_availability_zones.available_zones.names)
  availability_zone = each.key  # You can also use each.value because for list items each.key == each.value
  tags = {
    "Name" = "server-${each.value}"
  }
}