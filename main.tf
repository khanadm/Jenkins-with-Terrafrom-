provider "aws" {
    access_key = "${var.access_key}"
    secret_key = "${var.secret_key}"
    region = "us-east-1"
}

resource "aws_instance" "ec2_instance" {
    ami = element(var.ami_id, count.index)
    count = "${var.number_of_instances}"
    subnet_id = "${var.subnet_id}"
    instance_type = "${var.instance_type}"
 
    tags = {
        "Name"      = count.index == 0 ? "ansible-master" : "ansible-node1"
        "AMI_ID"    = element(var.ami_id, count.index)
        
    }

} 
