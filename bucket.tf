resource "aws_s3_bucket" "s3bucket" {
  bucket = "abcd-dv-tf-test-bucket"

  tags = {
    Name        = "abcd-atlantis-test-bucket"
    Environment = "Dev"
  }
}
