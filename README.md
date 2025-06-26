# Scalr Serverless Runner

## Overview
This project sets up a serverless infrastructure using AWS Lambda, API Gateway, and ECS Fargate. It allows you to trigger Fargate tasks via an API Gateway endpoint secured with an API key.

## Prerequisites
- AWS CLI configured with appropriate credentials
- Terraform (or OpenTofu) installed
- Python 3.11 (for Lambda function)
- Scalr account and API token (if using Scalr backend)

## Setup
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd serverless
   ```

2. Initialize Terraform:
   ```bash
   tofu init
   ```

3. Apply the Terraform configuration:
   ```bash
   tofu apply -auto-approve
   ```

4. Note the outputs:
   - `webhook_url`: The API Gateway endpoint URL
   - `api_key`: The API key required for authentication

## Usage
Trigger the Fargate task by sending a POST request to the API Gateway endpoint with the API key:
```bash
curl -X POST "https://<api-id>.execute-api.<region>.amazonaws.com/prod/trigger" \
  -H "X-Api-Key: <your-api-key>" \
  -H "Content-Type: application/json" \
  -d '{}'
```

## Project Structure
- `main.tf`: Root Terraform configuration
- `lambda_function.py`: AWS Lambda function code
- `modules/`: Terraform modules
  - `aws/api-gateway`: API Gateway configuration
  - `aws/lambda`: Lambda function configuration
  - `aws/ecs`: ECS Fargate task configuration
  - `aws/networking`: VPC and networking resources
  - `scalr/agent-pool`: Scalr agent pool configuration (if applicable)

## License
[Specify your license here] 