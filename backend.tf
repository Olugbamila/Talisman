terraform {
  backend "s3" {
    bucket = "bgcbucket001"
    key    = "terrafor.tfstate"
    region = "us-east-1"
  }
}
