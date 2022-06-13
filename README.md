# Containarize-Lambda
Create the lambda along with package in docker image  And deploy image in ECR.

Errors Encountered :
1.An image does not exist locally with the tag: while pushing image to local registry  
You need to tag and push the image. When tagging an image, you can use the image identifier (imageId). It is listed when showing the list of all images with docker images. Syntax and an example (using imageId) for creating a tag are:

docker tag <imageId or imageName> <hostname>:<repository-port>/<image>:<tag>
docker tag af340544ed62 example.com:18444/hello-world:mytag
Once the tag, which can be equivalent to a version, is created successfully, you can confirm its creation with docker images and issue the push with the syntax:
docker push <hostname>:<repository-port>/<image>:<tag>
  
Link : https://stackoverflow.com/questions/48038969/an-image-does-not-exist-locally-with-the-tag-while-pushing-image-to-local-regis

2.toomanyrequests: You have reached your pull rate limit. You may increase the limit by authenticating and upgrading
Link: https://stackoverflow.com/questions/65806330/toomanyrequests-you-have-reached-your-pull-rate-limit-you-may-increase-the-lim
  
3.Docker Hub Login for AWS CodeBuild (Docker Hub Limit)?
Link: https://stackoverflow.com/questions/64967922/docker-hub-login-for-aws-codebuild-docker-hub-limit
  
4.Docker sample for CodeBuild - AWS DOCS
Link: https://docs.aws.amazon.com/codebuild/latest/userguide/sample-docker.html
  
5.How to pass environment variable to the buildspec.yml for AWS codebuild
Link: https://stackoverflow.com/questions/52180426/how-to-pass-environment-variable-to-the-buildspec-yml-for-aws-codebuild
  
6.Problem in getting result from 'aws ecr get-login'
Link: https://stackoverflow.com/questions/54232443/problem-in-getting-result-from-aws-ecr-get-login
  
7.get-login-password (AWS CLI command) - aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.co
Link: https://docs.aws.amazon.com/cli/latest/reference/ecr/get-login-password.html
- authenticate with ecr using docker login before executing docker push command
- It authenticates your aws creds with ECR in the AWS account
- Dockerhub is a registry where images are stored. Similarly, ECR is a registry provided by Amazon to store image so use any one of them. In our case ECR   would make sense because dockerhub suffers from rate limiting issues.
- docker login command authenticates against the ECR repository aws_account_id.dkr.ecr.region.amazonaws.com with the password/token provided by aws ecr     get-login-password --region region
  

