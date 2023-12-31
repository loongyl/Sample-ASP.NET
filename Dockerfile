# from ubuntu:18.04
from mcr.microsoft.com/dotnet/sdk:7.0

WORKDIR backend-svr


# RUN apt-get update && \
#     apt-get install -y software-properties-common && \
#     apt-get install -y wget && \
#     rm -rf /var/lib/apt/lists/*

# RUN wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb

# RUN dpkg -i packages-microsoft-prod.deb

# RUN add-apt-repository universe

# RUN apt install apt-transport-https -y

# RUN apt-get update

# RUN wget http://ftp.us.debian.org/debian/pool/main/i/icu/libicu-dev_67.1-7_amd64.deb

# RUN dpkg -i libicu-dev_67.1-7_amd64.deb

# RUN apt install libicu-dev libicu dotnet-sdk-3.1 -y

COPY ./ ./

RUN dotnet restore

RUN dotnet build

EXPOSE 5000:5000

CMD [ "dotnet", "run" ]

