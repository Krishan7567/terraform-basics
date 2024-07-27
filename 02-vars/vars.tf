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
    value = "${var.list[0]"
  
}