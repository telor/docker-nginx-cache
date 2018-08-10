# docker-nginx-cache

> Docker image to use nginx as caching instance

# Build

`docker build -t ncache .`

# Run

`docker run -it -e PROXY_PASS=https://www.example.com -p 80:80 ncache`

and test with 

`curl -v -o /dev/null -s "http://localhost/"`