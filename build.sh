docker build -t $JOB_NAME:$BUILD_ID .

docker tag $JOB_NAME:$BUILD_ID  dhanesh772/$JOB_NAME:$BUILD_ID

docker tag $JOB_NAME:$BUILD_ID dhanesh772/$JOB_NAME:latest

docker push dhanesh772/$JOB_NAME:$BUILD_ID

docker push dhanesh772/$JOB_NAME:latest

docker rmi -f $JOB_NAME:$BUILD_ID dhanesh772/$JOB_NAME:$BUILD_ID dhanesh772/$JOB_NAME:latest
