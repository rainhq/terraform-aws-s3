resource "aws_s3_bucket" "this" {
  bucket = join("-", [
    "rain",
    var.service,
    var.environment
  ])
}

resource "aws_s3_bucket_website_configuration" "example" {
  count  = var.configure_content_hosting ? 1 : 0
  bucket = aws_s3_bucket.this.bucket

  index_document {
    suffix = var.index_page
  }
}