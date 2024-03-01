resource "random_string" "rand-str" {
length=20
special=true
override_special = "!#$%^&*()_-=+[]{}<>:?"
}

output "rand-str" {
value = random_string.rand-str[*].result
}
