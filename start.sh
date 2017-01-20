
export CI_BUILD_REF_NAME='lcl'
export ENV='lcl'
export REPO_NAME='halterscycles-web-dev'
export HOSTNAME='192.168.99.100.xip.io'
export VIRTUAL_HOST=$REPO_NAME--$CI_BUILD_REF_NAME.$HOSTNAME
export MYSQL_PASS='yankee-bravo-foxtrot-yoga'
export VIRTUAL_PHPMYADMIN_HOST=$REPO_NAME.'_mysql'.$HOSTNAME


if [ "$1" = "build" ]; 
  then docker-compose build --no-cache;
fi;

 docker-compose up -d
