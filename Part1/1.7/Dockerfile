FROM ubuntu:16.04
WORKDIR /usr/app
COPY . .
RUN apt-get update && apt-get install -y curl
CMD ["./script.sh"]