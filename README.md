# cong-dev
docker build --no-cache -t dev .

docker run -it --name cong-dev -h cong-dev -v /path/to/work:/work dev
