provider "aws" {
    access_key = "<access key>"
    secret_key = "<secret key>"
    region = "us-east-1"
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "Dashboard"

  dashboard_body = <<EOF
{
}
EOF
}