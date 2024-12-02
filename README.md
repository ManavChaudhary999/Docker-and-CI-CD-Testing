# Simple express app with prisma

### Docker Image Configuration
 - Create a Docker file
 - Write Build Steps for the image
 - Create .dockerignore file for removing /node_modules and /dist folders
 - Run below command to build image
    - `docker build -t express-prisma-app .`
 - Run the docker container
    - `docker run -p 3000:3000 -e DATABASE_URL="<remote_url>"`
 - Steps to Push to docker hub
    1. Tag Your Docker Image
        - Docker Hub requires images to be tagged in the format `<dockerhub-username>/<repository-name>:<tag>`
        - Example: `docker tag express-prisma-app:latest your-dockerhub-username/express-prisma-app:latest
    2.  Push the Image to Docker Hub
        - `docker push your-dockerhub-username/express-prisma-app:latest`

### Github CI Configuration
- Create .github/workflows folder
- Create action file like lint.yml
- Write actions in the file
- Push the code and check in actions tab of the repo.