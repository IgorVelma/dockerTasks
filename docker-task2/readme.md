build image
docker build -t image_name -f- ./ < Dockerfile

run container
docker run -ti -p 8080:8080/tcp -p 8080:8080/udp image_name

build project on container
docker exec container_id sh build.sh GITUserName GITPassword https://github.com/author/someProjectName.git someProjectName

deploy project on container
docker exec container_id sh deploy.sh

build and deploy
docker exec container_id sh builddeploy.sh GITUserName GITPassword https://github.com/author/someProjectName.git someProjectName


MAKE SURE from any link for example: https://github.com/author/someProjectName.git   someProjectName(project name in git link) need to be equal someProjectName(last argument of docker run)


http://192.168.99.100:8080/app  - to check 