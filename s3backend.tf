resource "aws_s3_bucket" "terraform_backend" {
  bucket = "koubra-2023" # Replace with your desired S3 bucket name

 # lifecycle {
  #  prevent_destroy = true
  }
#}

resource "aws_s3_bucket_acl" "terraform_backend_acl" {
  bucket = aws_s3_bucket.terraform_backend.bucket

}

