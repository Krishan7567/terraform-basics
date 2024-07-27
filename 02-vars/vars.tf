variable "ag" {
    default = "hello"
     
}

output "sample" {
    value = var.ag
  
}

variable "list" {
    default = ["hello", "test", "yes"]
  
}

output "test" {
    value = "hi ${var.list[0]}, ${var.list[2]}"
  
}