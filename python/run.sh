if [ $# -eq 1 ]; then
  echo "\n##### BUILDING DOCKER IMAGE #####"
  docker build -t $1 .
  echo "\n##### RUNNING CONTAINER #####"
  docker run --name $1 $1
else
  echo "Use only 1 arg (image name)!"
fi
