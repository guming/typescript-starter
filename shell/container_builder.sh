# docker build --tag nodeapp:latest .
docker rm $(docker container ls -af name=nodeapp -q)
docker run -it --name nodeapp -p 8000:8000 552598673490.dkr.ecr.ap-southeast-1.amazonaws.com/coca:e93aa18808a35ce5870a9e8f8419cd04d1cb5793
