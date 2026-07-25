resource "aws_s3_bucket" "data_lake" {
  bucket = "yehia-demo-bucket-2026-001"

  tags = {
    Name        = "DataLakeBucket"
    Environment = "Dev"
    Project     = "AWS Learning"
    Owner       = "Yehia"
  }
}

resource "aws_s3_object" "sample_file" {
  bucket = aws_s3_bucket.data_lake.id

  key = "my-file-test.txt"

  content = "Hello from Terraform"

  content_type = "text/plain"

  etag = md5("my-file-test.txt")
}