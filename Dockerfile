FROM ubuntu

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends \
    bc \
    bison \
    build-essential \
    ca-certificates \
    ccache \
    curl \
    flex \
    g++-multilib \
    gcc-multilib \
    git \
    gnupg \
    gperf \
    imagemagick \
    lib32ncurses-dev \
    lib32readline-dev \
    lib32z1-dev \
    liblz4-tool \
    libncurses5 \
    libncurses-dev \
    libsdl1.2-dev \
    libssl-dev \
    libxml2 \
    libxml2-utils \
    lzop \
    pngcrush \
    python \
    rsync \
    schedtool \
    squashfs-tools \
    xsltproc \
    xz-utils \
    zip \
    zlib1g-dev \
 && rm -rf /var/lib/apt/lists/*

RUN curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo \
 && chmod a+x /bin/repo
 
RUN git config --global user.name "Alex Winkowski" \
 && git config --global user.email dereference23@outlook.com \
 && git config --global color.ui false
