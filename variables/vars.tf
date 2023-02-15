variable "sample10"{
    default = 10
}
output "def"{
  value = var.sample10  
}

variable "sample5" {
   
   default = [100,"abc","xyz"]
}

output "def_list"{
  value = var.sample5[2] 
}

variable "sample5" {
   
   default = {
    number = 100
    string = "xyz"
    boolean = false
   }

}
output "def_list"{
  value = var.sample5["string"] 
}