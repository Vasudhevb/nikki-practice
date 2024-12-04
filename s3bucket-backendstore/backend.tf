terraform {
  backend "s3" {
    bucket         = "nikkidhev-bucketstorage"  # The name of your S3 bucket
    key            = "nikki/terraform.tfstate"   # The path where the state file will be stored
    region         = "ap-south-1"  # Your AWS region
    encrypt        = true  # Enable encryption of the state file in S3
    #dynamodb_table = "terraform-lock-table"  # Optional: Use DynamoDB table for state locking
    #acl            = "bucket-owner-full-control"  # Optional: Set ACL to control access
  }
}
