aws cloudformation update-stack --stack-name MyNetwork --template-body file://MyNetwork.yml --profile tvt_admin
aws cloudformation wait stack-update-complete --stack-name MyNetwork --profile tvt_admin