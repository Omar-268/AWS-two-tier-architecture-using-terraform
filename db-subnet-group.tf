resource "aws_db_subnet_group" "subnet-grp" {
  name       = var.db_subnet
  subnet_ids = [aws_subnet.pri-sub-1.id, aws_subnet.pri-sub-2.id]
}
