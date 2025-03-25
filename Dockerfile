from alpine

ARG PLATFORM
WORKDIR /app
COPY arduino-cli.yaml /app/arduino-cli.yaml
RUN apk add curl --no-cache

RUN curl -L https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
RUN ln -s /app/bin/arduino-cli /usr/local/bin/arduino-cli
RUN if [ "$PLATFORM" = "avr" ]; then \
      arduino-cli --config-file arduino-cli.yaml core install arduino:avr && \
      arduino-cli --config-file arduino-cli.yaml core install lgt8fx:avr; \
    elif [ "$PLATFORM" = "esp8266" ]; then \
      arduino-cli --config-file arduino-cli.yaml core install esp8266:esp8266; \
    elif [ "$PLATFORM" = "esp32" ]; then \
      arduino-cli --config-file arduino-cli.yaml core install esp32:esp32; \
    else \
      echo "Unknown platform: $PLATFORM" && exit 1; \
    fi
