aws cloudformation delete-stack --stack-name MyNetwork --profile tvt_admin
aws cloudformation wait stack-delete-complete --stack-name MyNetwork --profile tvt_admin