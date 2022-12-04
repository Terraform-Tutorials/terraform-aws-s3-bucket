resource "aws_s3_bucket" "y" {
  bucket = "my-tf-test-bucket-01-aws"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_s3_bucket_acl" "example-01" {
  bucket = aws_s3_bucket.y.id
  acl    = "private"
}