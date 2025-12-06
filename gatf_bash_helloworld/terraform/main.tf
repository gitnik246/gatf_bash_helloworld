terraform {
  required_version = ">= 1.0.0"
  
  required_providers {
    local = {
      source ="hashicorp/local"
      version = "-> 2.0"
      
    }
    
  }
}

# Recurso de ejemplo: archivo local (en plan, no se crea porque no hacemos apply)

resource "local_file" "hello" {
  content = "Hello from Terraform!"
  filename = "$(path.module)/hello-from-terraform.txt"
  
}