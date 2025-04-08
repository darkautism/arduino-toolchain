# Arduino Toolchain Docker Container
This project provides a Docker container with Arduino toolchains for compiling sketches targeting AVR, ESP32, and ESP8266 microcontrollers. You can either use pre-built images from Docker Hub or build your own container from the source.

## Available Tags
Pre-built images are hosted on [Docker Hub](https://hub.docker.com/r/darkautism/arduino-toolchain). The following tags are available:

| Tag | Description |
| ---|--------------|
|avr | Toolchain for AVR (e.g., ATmega328P on Arduino Uno)|
|esp32 | Toolchain for ESP32 boards|
|esp8266 | Toolchain for ESP8266 boards|

## Using Pre-built Containers
1. Install Docker
Ensure Docker is installed on your system. See the [Docker Documentation](https://docs.docker.com/get-started/get-docker/) for installation instructions.

2. Pull the Image
Pull the desired image from Docker Hub. For example:  
```bash
docker pull darkautism/arduino-toolchain:avr
```
## Build Your Own Container
1. Clone the Repository
Clone this repository to your local machine:  
```bash
git clone https://github.com/darkautism/arduino-toolchain.git
cd arduino-toolchain
```
2. Build the Image
Build the Docker image for your desired architecture. Depending on the repository structure, use one of these methods:  
Single Dockerfile with Build Argument: 
```bash
PLATFORM=avr docker build -t darkautism/arduino-toolchain:avr .
```

Replace PLATFORM=avr with PLATFORM=esp32 or PLATFORM=esp8266 for other architectures.  

## Contributing
Feel free to submit issues or pull requests to improve this project.
## License
This project is licensed under the [MIT](LICENSE) License. See the LICENSE file for details.

Note: The toolchains included in the container (e.g., AVR-GCC, ESP32, ESP8266 toolchains) and any derivative works are subject to their respective licenses. 


