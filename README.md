## Prerequisites
- **AWS CLI**: Installed and configured with appropriate permissions.
  - To check if AWS CLI is installed: `aws --version`
  - To configure (if not already): `aws configure` (enter your access key, secret key, region, and output format)
  - To verify you're logged in: `aws sts get-caller-identity` (should return your account info without errors)
- Terraform installed (version >= 1.0)
- Python 3.11


## Setup

1. **Clone or download this repository.**

2. **Edit `variables.tf`** file to set your actual values:
   ```
   variable "aws_region" {
     description = "AWS region"
     type        = string
     default     = "YOUR_AWS_REGION"  # Replace with your preferred region
   }

   variable "notification_email" {
     description = "Email address for SNS notifications"
     type        = string
     default     = "your-email@example.com"  # Replace with your email
   }

   variable "aws_profile" {
   description = "AWS CLI profile to use"
   type        = string
   default     = "default" #replace with your profile
   }
   ```

3. **Create the Lambda deployment package:**
   ```bash
   python3 -m venv venv && source venv/bin/activate && pip install -r requirements.txt && deactivate
   zip lambda_function.zip lambda_function.py
   cd venv/lib/python3.12/site-packages && zip -r ../../../lambda_function.zip .
   ```

## Files

- `main.tf`: Main Terraform configuration that orchestrates the modules
- `variables.tf`: Variable definitions with defaults
- `lambda_function.py`: Lambda function code
- `requirements.txt`: Python dependencies
- `README.md`: This file
