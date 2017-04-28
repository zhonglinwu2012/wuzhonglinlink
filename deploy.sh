source .env
export AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID 
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY
aws s3 sync ./public/ s3://wuzhonglin.link/
