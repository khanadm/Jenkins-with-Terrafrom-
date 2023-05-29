variable "access_key" {
        description = "AKIA34DKFXR7ILNJCM6C"
}
variable "secret_key" {
        description = "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"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-081aaec604bcfe41a"
}

variable "ami_id" {
        description = "The AMI to use"
        type = list
        default = ["ami-053b0d53c279acc90", "ami-0715c1897453cabd1"]
}

variable "number_of_instances" {
        description = "number of instances to be created"
        default = 2
}
