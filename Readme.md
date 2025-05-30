Hello!

In this task i have learned to work hands-on with Terraform
Terraform is a tool used to implement a DevOps concept "IaC"
Infrastructures can be created using a .tf file
the configurations are written in main.tf file
I have deployed a server (nginx) using docker
Terraform file consists of 2 basic contents
-Providers = Docker
-Resources = Docker image, Docker container

i configured the provider as docker
configured the nginx image
deployed it in my localhost 8081

commands used
1) terraform init - initializes a repo for my infra
2) terraform plan - shows whats things gonna changed
3) terraform validate - validate .tf file (check for errors like typo , syntax)
4) terraform apply - Changes applied
5) terraform state list - shows the current implemented states (docker_container, docker_image)
6) terraform destroy - destroy all the infrastructure created 
