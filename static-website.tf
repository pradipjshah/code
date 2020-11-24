resource "aws_s3_bucket" "b" {
  bucket = "s3-website-test.pshahcorp.com"
  policy = file("s3-website-policy.json")

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "b" {
  bucket = aws_s3_bucket.b.id

  block_public_acls   = true
  ignore_public_acls  = true
}
