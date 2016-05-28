# DevOps Training - Jenkins & XL Deploy - Practical / Usage - using Docker compose

# 1 - Preparation (you can be offline after this step)

## 1.1 - Clone the repository locally
```
git clone https://github.com/ykandrirody/training-devops-v2-continuous-deployment.git
```

## 1.2 - Download dependencies
```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml pull
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml build
wget http://updates.jenkins-ci.org/download/plugins/deployit-plugin/5.0.2/deployit-plugin.hpi
wget http://updates.jenkins-ci.org/download/plugins/scm-api/1.2/scm-api.hpi
wget http://updates.jenkins-ci.org/download/plugins/git-client/1.19.6/git-client.hpi
wget http://updates.jenkins-ci.org/download/plugins/git/2.4.4/git.hpi
```

## 1.3 - Install dependencies 
If needed, install flash ( needed by XL Deploy ) :
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

Use this credentials to connect to your XL Deploy :
admin
password

Use this credentials to connect to your Gogs :
root
password

## 3 - Do the training

Follow the course materials.

Check at the end : 
```
docker exec xldeploy ls -ae /dpl
docker exec xldeploy cat /dpl/README.md
```

## 4 - Deallocate resources

Stop all containers :
```
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml kill
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml rm -f -v -a
```
