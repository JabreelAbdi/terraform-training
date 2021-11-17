resource "aws_s3_bucket" "my_bucket_bucket" {
  bucket = "talent-academy-jabreelabdi"
  acl    = "private"

  versioning {
    enabled = true
  }

  tags = {
    Name        = "My first bucket"
    Environment = "test"
  }
}

resource "aws_dynamodb_table" "terraform_lock_tbl" {
  name           = "terraform_lock_tbl"
  read_capacity  = 1
  write_capacity = 1
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    "name" = "terraform-lock"
  }
}
