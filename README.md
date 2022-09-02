# Terraform_Project
1. creating a vpc with two subnets.
2. creating public and private network. 
3. creating internet gateway and elastic ip to use it in nat gateway.
4. creating a two instance that in private network and connect to internet using nat gateway.
5. making security group that allow only https port inbound.
6. generate ssh key by tls_private_key resource and store the private key in secret manager service.
7. apply the concept of modules on network.
8. creating backend in to be able to share the state file on s3 service.
9. avoid state locked by using dynamodb service in backend file.
10. Creating two workspaces one for production and the other for development. 
## Iac pipeline
1.creating a jenkinsfile that contain a pipeline script to apply or destroy terraform code
### Note
1. you must create a ec2 slave with label name ec2
2. this scrip is paramatirezed
  1.. the first parameter named (action) is to make apply or destory use this to word when you making parameter ( apply - destroy)
  2.. the second parameter is named (action_var) to run prodution enviroment or development enviroment use this to word when you making parameter ( dev.tfvars - prod.tfvars)
4. to use it to slave to master jenkins you must give the following rules to your ec2
  1. AmazonEC2FullAccess
  2. SecretsManagerReadWrite
  3. AmazonS3FullAccess
  4. AmazonDynamoDBFullAccess
  5. AmazonVPCFullAccess
  6. AWSNetworkManagerFullAccess
  7. AWSKeyManagementServicePowerUser
  8. AWSAccountManagementFullAccess
  9. NetworkAdministrator


