provider "aws" {
    region = "us-west-2"
}

resource "aws_instance" "ubuntu_1" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"  
  key_name      = "scottest"  

  tags = {
    Name = "UbuntuInstance1"
  }
}

resource "aws_instance" "ubuntu_2" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"  
  key_name      = "scottest"  

  tags = {
    Name = "UbuntuInstance2"
  }
}

resource "aws_instance" "prometheus" {
  ami           = "ami-0c55b159cbfafe1f0" 
  instance_type = "t2.micro"  
  key_name      = "scottest"  

  tags = {
    Name = "Prometheus"
  }
}

output "ubuntu1_public_ip" {
  value = aws_instance.ubuntu_1.public_ip
}

output "ubuntu2_public_ip" {
  value = aws_instance.ubuntu_2.public_ip
}

output "prometheus_public_ip" {
  value = aws_instance.prometheus.public_ip
}