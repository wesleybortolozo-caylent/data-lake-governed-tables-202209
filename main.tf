provider "aws" {
  region = var.aws_region
}

module "dl_storage_layer" {
  source = "./modules/s3-dl-storage/"

  bucket_names = var.bucket_names
  aws_region   = var.aws_region
}
