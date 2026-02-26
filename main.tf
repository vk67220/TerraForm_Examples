# Create S3 Bucket
resource "aws_s3_bucket" "project_bucket" {
  bucket = "kasturi-realtime-terraform-bucket-123456"

  tags = {
    Name        = "Realtime-Terraform-Bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
  }
}

# Enable Versioning
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.project_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}


