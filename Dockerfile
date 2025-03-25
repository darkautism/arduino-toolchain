from alpine

WORKDIR /app
COPY arduino-cli.yaml /app/arduino-cli.yaml
RUN apk add curl --no-cache

RUN curl -L https://raw.githubusercontent.com/arduino/arduino-cli/master/install.sh | sh
RUN ln -s /app/bin/arduino-cli /usr/local/bin/arduino-cli
RUN arduino-cli --config-file arduino-cli.yaml core install arduino:avr
RUN arduino-cli --config-file arduino-cli.yaml core install lgt8fx:avr
RUN arduino-cli --config-file arduino-cli.yaml core install esp8266:esp8266
RUN arduino-cli --config-file arduino-cli.yaml core install esp32:esp32
#RUN arduino-cli --config-file arduino-cli.yaml core install rp2040:rp2040
#RUN arduino-cli --config-file arduino-cli.yaml core install Maixduino:k210
#RUN arduino-cli --config-file arduino-cli.yaml core install SparkFun:avr



