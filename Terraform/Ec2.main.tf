provider "aws" {
  region = "eu-central-1"
}

resource "aws_key_pair" "deployer" {
  key_name = "terraform-ansible"
  public_key = file("C:/Users/Sudeep/.ssh/id_rsa.pub") # Ensure this key exists
  
}

resource "aws_instance" "terra-docker" {
  ami = "ami-03250b0e01c28d196"
  instance_type = "t3.micro"
  key_name = "terraform-ansible"
  associate_public_ip_address = true

  tags = {
    Name = "Terraform-Ansible-Instance"
  }

  provisioner "local-exec" {
    command = "echo ${self.public_ip} > ../ansible/hosts.txt"

    #This is a Terraform provisioner that runs a local shell command on your own machine, not inside the EC2 instance.
    # After the EC2 instance is created, Terraform will:

#Take its public IP

#Write that IP to a file called hosts.txt inside the ../ansible/ folder (relative to your Terraform directory)
    
  }
  
}

output "public_ip" {
  value = "aws_instance.app_server.public_ip"

  
}