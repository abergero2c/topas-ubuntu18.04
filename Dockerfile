FROM ubuntu:18.04
RUN apt update && \
 apt install -y wget gcc make g++ git software-properties-common\
        valgrind libboost-all-dev language-pack-en-base libboost-python-dev python3-dev \
        sshpass gfortran libsuperlu-dev libopenblas-dev \
	clang-tidy clang libboost-all-dev python-yaml fontconfig python3-pip\
 && rm -rf /var/lib/apt/lists/*
RUN add-apt-repository ppa:george-edison55/cmake-3.x && apt update && apt install cmake
RUN apt update && \
    apt install -y clang-8 clang-tidy-8
RUN apt-get update && \
    apt-get install -y qt5-qmake qt5-default openssh-client && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN pip3 install conan
ENV LANG en_US.utf-8
