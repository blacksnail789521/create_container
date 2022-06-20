1. Go to [NGC release note](https://docs.nvidia.com/deeplearning/frameworks/tensorflow-release-notes/index.html) to see which version of image we want to pull, and type that version into `.env`
2. Use `docker-compose build` to create image
3. Use `docker-compose run` to run a container based on the service on the Dockerfile
   - Just use the script `create_container.sh` (remember to alter `TAG`)
