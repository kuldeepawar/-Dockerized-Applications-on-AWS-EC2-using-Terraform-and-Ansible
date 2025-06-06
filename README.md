# -Dockerized-Applications-on-AWS-EC2-using-Terraform-and-Ansible

### Problem Statement: 

Design and implement an automated solution to deploy containerized applications on AWS EC2 instances using Infrastructure as Code (IaC) and Configuration Management tools. 
 
The objective of this project is to provision an AWS EC2 instance using Terraform and configure it using Ansible. Ansible should install Docker and Docker Compose on the instance, deploy a pre-defined Docker Compose configuration file, and run the required Docker containers automatically. 
 
This project demonstrates a complete automation pipeline leveraging Terraform for infrastructure provisioning and Ansible for server configuration and container orchestration, ensuring consistency, repeatability, and minimal manual intervention in the deployment process. 

 

## Steps 1: 

 

## Project structre:  

 

 Dockerized Applications on AWS EC2 using Terraform and Ansible ├── ansible/ 

│   ├── playbook.yml 

│   ├── inventory.ini 

│   └── files/ 

│       └── docker-compose.yml 

├── terraform/ 

│   ├── main.tf 

└── README.md 
