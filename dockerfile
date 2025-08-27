FROM alpine:latest

# Install curl & unzip
RUN apk add --no-cache curl unzip

# Install ngrok
RUN curl -s https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-stable-linux-amd64.zip -o ngrok.zip \
    && unzip ngrok.zip \
    && mv ngrok /usr/local/bin/ngrok \
    && rm ngrok.zip

# Default command
ENTRYPOINT ["ngrok"]
