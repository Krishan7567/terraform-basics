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

variable "ex-maps" {
    default = {
        lang = "eng",
        day  = "Mon"
    }
  
}

output "maps" {
    value = var.ex-maps
  
}

variable "empty" {
      
}

output "empty" {
    value = var.empty  
}