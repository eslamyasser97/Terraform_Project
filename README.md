# Terraform_Project
1. creating a vpc with two subnets
2. creating public and private network 
3. creating internet gateway and elastic ip to use it in nat gateway
4. creating a two instance that in private network and connect to internet using nat gateway
5. making security group that allow only https port inbound
6. generate ssh key by tls_private_key resource and store the private key in secret manager service
7. apply the concept of modules on network
8. creating backend in to be able to share the state file on s3 service
9. avoid state locked by using dynamodb service in backend file
