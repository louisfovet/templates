if [ $# -eq 1 ]; then
  
echo "\n##### BUILDING DOCKER IMAGE #####"
  docker build -t $1 .
  
  echo "\n##### RUNNING CONTAINER #####"
  docker ps | grep -q $1
  if [ $? -eq 1 ]; then
    docker run --detach --rm --name $1 -p 8080:80 $1
    sleep 1
  fi

  open -a Safari localhost:8080

else
  echo "Use only 1 arg (image name)!"
fi

