terraform {
  backend "s3" {
    bucket = "bootcamp-myawsbucket-tf-remote-state" # Bucket name
    key    = "basic-infraestructure.tfstate"
    region = "us-east-2"
  }
}
