how to run container?

docker run -ti -p 8080:8080/tcp -p 8080:8080/udp docker-task GITUserName GITPassword https://github.com/author/someProjectName.git someProjectName


MAKE SURE from any link for example: https://github.com/author/someProjectName.git   someProjectName(project name in git link) need to be equal someProjectName(last argument of docker run)


http://192.168.99.100:8080/  - to check (wait before server started) 