resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  db_name              = "maroof_db"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  username             = "root"
  password             = "rootroot"
  skip_final_snapshot  = true
  

  depends_on = [
    module.vpc,
    aws_db_subnet_group.mydbsubnetgroup
  ]

  vpc_security_group_ids = [aws_security_group.rds_sg.id]
  db_subnet_group_name = aws_db_subnet_group.mydbsubnetgroup.name
}