
resource "aws_eip" "lb" {
domain = "vpc"
}

output "public-ip" {
value = aws_eip.lb.public_ip

}
output "Full-IP" {
value = "https://${aws_eip.lb.public_ip}:8080" # Notice, that you can also customize the output
}
output "associated-attributes-are" {
value = aws_eip.my-eip #with this it will show you the relevant output . You can also query on the output value
}
