# # This code will create rds instance in the default subent if you don`t have default vpc please create subnet group first
# resource "aws_db_instance" "db_instance" {
  
#   identifier           = "mysqldb"
#   allocated_storage    = 10
#   engine               = "mysql"
#   engine_version       = "5.7"
#   instance_class       = "db.t3.micro"
#   db_name              = "mydb"
#   username             = "admin"
#   password             = var.dbpassword
#   parameter_group_name = "default.mysql5.7"
#   skip_final_snapshot  = true
#   availability_zone    = "${var.region}a"
# }

