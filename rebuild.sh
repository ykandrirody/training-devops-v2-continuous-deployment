echo 
echo Remove ressources
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml kill
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml rm -f -v -a

echo 
echo Build containers
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml build

echo 
echo Start containers
docker-compose -f ./training-devops-v2-continuous-deployment/docker-compose.yml up -d

echo 
echo Wait all components 15 seconds to start.
sleep 5
