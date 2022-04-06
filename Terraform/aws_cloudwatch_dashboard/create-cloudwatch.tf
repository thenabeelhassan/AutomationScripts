provider "aws" {
    access_key = "<access key>"
    secret_key = "<secret key>"
    region = "us-east-1"
}

variable "ec2-instance" {
  type = "string"
  default = "<ec2 ID>"
}

resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "dashboard-${var.ec2-instance}"

  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "CPUUtilization",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "${var.ec2-instance} - CPU Utilization"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkIn",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "${var.ec2-instance} - Network In"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "NetworkOut",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "${var.ec2-instance} - Network Out"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskReadBytes",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "${var.ec2-instance} - Disk Read Bytes"
      }
    },
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "metrics": [
          [
            "AWS/EC2",
            "DiskWriteBytes",
            "InstanceId",
            "${var.ec2-instance}"
          ]
        ],
        "period": 300,
        "stat": "Average",
        "region": "us-east-1",
        "title": "${var.ec2-instance} - Disk Write Bytes"
      }
    }
  ]
}
  EOF
}
