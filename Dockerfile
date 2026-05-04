FROM debian:trixie

# COMMONS
RUN apt-get update && apt-get install -y  build-essential devscripts cmake debhelper dh-exec pkg-config rsync


# ARM 32
RUN dpkg --add-architecture armhf
RUN apt-get update
RUN apt-get install -y gcc-arm-linux-gnueabihf g++-arm-linux-gnueabihf # Cross compiler
RUN apt-get install -y libasound2-dev:armhf libgles2-mesa-dev:armhf
RUN apt-get install -y libcurl4-openssl-dev:armhf
RUN apt-get install -y zlib1g-dev:armhf
RUN apt-get install -y uuid-dev:armhf
RUN apt-get install -y libxext-dev:armhf
RUN apt-get install -y qt6-base-dev:armhf

# ARM 64
RUN dpkg --add-architecture arm64
RUN apt-get update
RUN apt-get install -y gcc-aarch64-linux-gnu g++-aarch64-linux-gnu # Cross compiler
RUN apt-get install -y libasound2-dev:arm64 
RUN apt-get install -y libgles2-mesa-dev:arm64 
RUN apt-get install -y zlib1g-dev:arm64 
RUN apt-get install -y uuid-dev:arm64 
RUN apt-get install -y libxext-dev:arm64 
RUN apt-get install -y qt6-base-dev:arm64 
    
