if [ ! -n "$1" ] ;then
    echo "you have not input a version!"
    exit 1
else
    echo "the version you input is $1"
fi

version=$1

# docker build --platform linux/amd64 --build-arg BUILD_FROM="homeassistant/amd64-base:latest" -t my-test-addon-amd64:$version .
# docker tag my-test-addon-amd64:$version liuyi802/my-test-addon-amd64:$version
# docker rmi my-test-addon-amd64:$version
# docker push liuyi802/my-test-addon-amd64:$version

docker build --platform linux/arm64 --build-arg BUILD_FROM="homeassistant/aarch64-base:latest" -t my-test-addon-aarch64:$version .
docker tag my-test-addon-aarch64:$version liuyi802/my-test-addon-aarch64:$version
docker rmi my-test-addon-aarch64:$version
docker push liuyi802/my-test-addon-aarch64:$version
