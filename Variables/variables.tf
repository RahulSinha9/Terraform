variable "filename" {
   default = "/home/ubuntu/Terraform/Terraform-variables/devops_automated.txt"
}
variable "content" {
  default = "This is auto grnerated file"
}

variable "devops_op"{}


variable "content_map" {
type = map
default= {
"content1"= "This is content 1"
"content2" = "This is content 2"
}
}

variable "file_list" {
type = list
default = ["/home/ubuntu/Terraform/Terraform-variables/file_1.txt","/home/ubuntu/Terraform/Terraform-variables/file_2.txt" ]
}