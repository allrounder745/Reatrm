FROM ubuntu:22.04

RUN apt-get update && apt-get install -y ffmpeg nodejs npm curl

WORKDIR /app

COPY . .

RUN npm install
RUN chmod +x start.sh

CMD ["./start.sh"]
