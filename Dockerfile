from alpine

WORKDIR /app
COPY arduino-cli.yaml /app/arduino-cli.yaml
RUN apk add curl --no-cache
RUN curl -L arduino-cli.tar.gz https://downloads.arduino.cc/arduino-cli/arduino-cli_latest_Linux_64bit.tar.gz | tar zxv
RUN ./arduino-cli config init --dest-file arduino-cli.yaml
RUN ./arduino-cli --config-file arduino-cli.yaml core install arduino:avr
RUN ./arduino-cli --config-file arduino-cli.yaml core install lgt8fx:avr
RUN ./arduino-cli --config-file arduino-cli.yaml core install esp8266:avr
RUN ./arduino-cli --config-file arduino-cli.yaml core install esp32:esp32
#RUN ./arduino-cli --config-file arduino-cli.yaml core install rp2040:rp2040
#RUN ./arduino-cli --config-file arduino-cli.yaml core install Maixduino:k210
#RUN ./arduino-cli --config-file arduino-cli.yaml core install SparkFun:avr



