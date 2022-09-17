# Terraform_Project
- creating a vpc with two subnets.
- creating public and private network. 
- creating internet gateway and elastic ip to use it in nat gateway.
- creating a two instance that in private network and connect to internet using nat gateway.
- making security group that allow only https port inbound.
- generate ssh key by tls_private_key resource and store the private key in secret manager service.
- apply the concept of modules on network.
- creating backend in to be able to share the state file on s3 service.
- avoid state locked by using dynamodb service in backend file.
- Creating two workspaces one for production and the other for development. 
- Deploying 2 replicas of nginx using eks service in two diffrent private subnet (private subnet1 and private subnet2)  
## Iac pipeline
- creating a jenkinsfile that contain a pipeline script to apply or destroy terraform code.
### Note
- you must donwload terraform in your ec2.
- you must create a ec2 slave with label name ec2.
- this scrip is paramatirezed.
  - the first parameter named (action) is to make apply or destory use this to word when you making parameter ( apply - destroy).
  - the second parameter is named (action_var) to run prodution enviroment or development enviroment use this to word when you making parameter ( dev.tfvars - prod.tfvars).
- to use it to slave to master jenkins you must give the following rules to your ec2.
  - AmazonEC2FullAccess.
  - SecretsManagerReadWrite.
  - AmazonS3FullAccess.
  - AmazonDynamoDBFullAccess.
  - AmazonVPCFullAccess.
  - AWSNetworkManagerFullAccess.
  - AWSKeyManagementServicePowerUser.
  - AWSAccountManagementFullAccess.
  - NetworkAdministrator.


