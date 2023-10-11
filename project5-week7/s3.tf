terraform {
  backend "s3"  {
  bucket = "koubra-2024" # Replace with your desired S3 bucket name
  key = "terraform.tfstate"
  region = "us-east-1"

}
}

resource "aws_dynamodb_table" "terraform_state_lock2" {
  name           = "terraform-state-lock2" # Replace with your desired DynamoDB table name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
}
