# DevOps Training - Continuous Deployment - Practical / Usage - using Docker compose

[![Build Status](https://travis-ci.org/ykandrirody/training-devops-v2-continuous-deployment.svg?branch=master)](https://travis-ci.org/ykandrirody/training-devops-v2-continuous-deployment)

[Get the PDF of this README](https://gitprint.com/ykandrirody/training-devops-v2-continuous-deployment/blob/master/README.md)

# 1 - Preparation (you can be offline after this step)

## 1.1 - Clone the repository locally
```
git clone https://github.com/ykandrirody/training-devops-v2-continuous-deployment.git
```

## 1.2 - Pull and build the Docker containers
```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml pull
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml build
```

## 1.3 - Install Flash 
If needed, install flash ( needed by XL Deploy ) using :
```
sudo apt-get install flashplugin-installer
```

## 1.4 - Get a licence key for XL Deploy
Subscribe here to get a free 30 day trial :
https://xebialabs.com/products/xl-deploy/trial/

# 2 - Start the practical

## 2.1 - Start all services

```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml up -d
```

##  2.2 - Connect to Jenkins :
http://localhost:8080/

##  2.3 - Connect to XL Deploy :
http://localhost:4516/

##  2.3 - Connect to Gogs :
http://localhost:3000/

## 3 - Do the training

Follow the course materials : 

[The practical steps](https://github.com/ykandrirody/training-devops-v2-continuous-deployment/blob/master/practical.pdf)

## 4 - Deallocate resources

```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml kill
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml rm -f -v -a
```
