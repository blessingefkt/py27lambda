# docker pull saylaco/pylambda27
docker build -t saylaco/pylambda27 .

cp package.sh ./create_table/

docker run --rm -v $(pwd)/create_table:/io -t \
    -e GIT_REPO "saylaco/pylambda27" \
    bash /io/package.sh