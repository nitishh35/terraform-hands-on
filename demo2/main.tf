provider "aws" {
    region = "us-east-1"
}

resource "null-resouce" "run_script" {
    provisioner "local-exec" {
        command = "echo 'Hello from terraform'"
      
    }
}

###this is local provisioner example

provider "aws" {
    trigger = {
        alway_run = timestamp()
    }
    
    provisioner "local-exec"{
        command = "./script.sh"
    }
  
}