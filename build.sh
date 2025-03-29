docker build -t django:$BUILD_ID .

docker tag django:$BUILD_ID dhanesh772/django:$BUILD_ID

docker tag django:$BUILD_ID dhanesh772/django:latest

docker push dhanesh772/django:$BUILD_ID

docker push dhanesh772/django:latest

docker rmi -f django:$BUILD_ID dhanesh772/django:$BUILD_ID dhanesh772/django:latest
