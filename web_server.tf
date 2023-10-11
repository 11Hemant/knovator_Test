# web_server.tf
resource "aws_instance" "web_server" {
  ami           = "ami-12345678" # Specify the appropriate AMI
  instance_type = "t2.micro"
  # Add security groups, key pairs, and other necessary settings

  user_data = <<-EOF
              #!/bin/bash
              apt update
              apt install -y nginx
              # Configure NGINX for Laravel
              # Add more custom configuration if needed
              service nginx start
              EOF
}

# Define outputs or variables as needed
