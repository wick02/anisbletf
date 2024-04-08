provider "aws" {
    profile = "awsprofile" # hardcoded since we aren't focused on aws keys or session management quite yet
    region = var.aws_region
}