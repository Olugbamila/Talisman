terraform {
  backend "s3" {
    bucket = "bgcbucket001"
    key    = "gbamigbami"
    region = "us-east-1"
  }
}
