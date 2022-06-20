source .env

TAG=$1
if ((${#TAG} > 1)) ; then
	echo "len(TAG) > 1"
    return
fi

tag=${NGC_IMAGE_VERSION//./_}_${TAG} # replace "." to "_"
port=${tag//_/}
echo tag: ${tag}
echo port: ${port}

#docker-compose run --service-ports --name jason_pt_${tag} jason-pt
docker-compose run -p ${port}:22 --name jason_pt_${tag} jason-pt