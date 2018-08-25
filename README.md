# AWS SAM, Swagger, API Gateway, Lambda Starter
Light-weight sample to show how to use the AWS Serverless Application Model (AWS SAM) to integrate API Gateway to a separate Swagger or OpenAPI file. The demo triggers a lambda function through API gateway, and then returns the parameters passed to it to show that you can acces these parameters inside the lambda function.

![alt text](./architecture.png?raw=true "Architecture")

## Pre-requisites
1. Create an AWS Account [Link](https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/)
    - Take note of your AWS Access Key ID, AWS Secret Access Key and 12-digit account ID
2. Install AWS CLI Commands [Link](https://docs.aws.amazon.com/cli/latest/userguide/installing.html)
    - If you don't know which default region name to indicate, just set it to **us-east-1**
3. Configure your local PC [Link](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)
4. Install AWS SAM Commands [Link](https://docs.aws.amazon.com/lambda/latest/dg/sam-cli-requirements.html)

## Deployment
1. Clone or download this repository.
2. Replace AWS_REGION and ACCOUNT_ID in the swagger.yaml file.
    ```
    ... arn:aws:lambda:AWS_REGION:ACCOUNT_ID:function:PostPetFunction/invocations
    ... arn:aws:lambda:AWS_REGION:ACCOUNT_ID:function:GetPetFunction/invocations
    ```
3. Replace UNIQUE_NAME deploy.sh and remove.sh files with some unique name.
    ```
    BUCKET="pet-store-api-deployment-workspace-UNIQUE_NAME"
    ```
    Important: Bucket names must be unique for all AWS users.
4. Run the following commands on your terminal:
    ```
    $ cd aws-sam-swagger-apigateway-lambda-starter
    $ sh ./deploy.sh
    ```
    Expected output:
    ```
    > ...
    > Successfully created/updated stack - pet-store-stack
    ```

#### Removal
1. Perform the following commands:
    ```
    $ cd aws-sam-swagger-apigateway-lambda-starter
    $ sh remove.sh
    ```
    Expected output:
    ```
    > ...
    > remove_bucket: pet-store-api-deployment-workspace-UNIQUE_NAME
    ```
