source .env
tag=${NGC_IMAGE_VERSION//./_} # replace "." to "_"
docker-compose run --service-ports --name jason_pt_${tag} jason-pt