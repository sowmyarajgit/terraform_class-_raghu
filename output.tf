output "sample" {

    value = "hello_world"
}



data "aws_ami" "example" {
  
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
  owners           = ["973714476881"]
}

output "ami"{
     
 value = data.aws_ami.example    
}

data "aws_instance" "foo" {
  instance_id = "i-0bfa88ba77cb6582c"
}

output "instance" {

    value = data.aws_instance.foo.public_ip
}

output "dns" {

    value = data.aws_instance.foo.public_dns
}