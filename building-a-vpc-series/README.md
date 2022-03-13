# Building a VPC with CloudFormation series
* Blog: 
    * https://www.favtuts.com/building-a-vpc-with-cloudformation-part-1/
    * https://www.favtuts.com/building-a-vpc-with-cloudformation-part-2/
* Templates:
    * [building-a-vpc-series/base-vpc-example.template.yml](building-a-vpc-series/base-vpc-example.template.yml)
    * [building-a-vpc-series/base-vpc-example-improved.template.yml](building-a-vpc-series/base-vpc-example-improved.template.yml)

# CLI Command

Go to working folder
```
cd building-a-vpc-series
```

Create stack using CLI with Profile:
```
aws cloudformation create-stack --stack-name MyNetwork --template-body file://MyNetwork.yml --profile tvt_admin
aws cloudformation wait stack-create-complete --stack-name MyNetwork --profile tvt_admin
```

If stack is already existed, we need to update
```
aws cloudformation update-stack --stack-name MyNetwork --template-body file://MyNetwork.yml --profile tvt_admin
aws cloudformation wait stack-update-complete --stack-name MyNetwork --profile tvt_admin
```

Delete stack to cleanup all created resources
```
aws cloudformation delete-stack --stack-name MyNetwork --profile tvt_admin
aws cloudformation wait stack-delete-complete --stack-name MyNetwork --profile tvt_admin
```

# Shell scripts

```
> sh x1-stack-create.sh
> sh x2-stack-update.sh
> sh x3-stack-delete.sh
```