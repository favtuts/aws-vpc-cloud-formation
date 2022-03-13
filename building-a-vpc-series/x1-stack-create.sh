aws cloudformation create-stack --stack-name MyNetwork --template-body file://MyNetwork.yml --profile tvt_admin
aws cloudformation wait stack-create-complete --stack-name MyNetwork --profile tvt_admin