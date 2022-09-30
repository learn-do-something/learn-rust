# See here for image contents: https://github.com/microsoft/vscode-dev-containers/tree/v0.245.2/containers/debian/.devcontainer/base.Dockerfile

# [Choice] Debian version (use bullseye on local arm64/Apple Silicon): bullseye, buster
ARG VARIANT="buster"
FROM mcr.microsoft.com/vscode/devcontainers/base:0-${VARIANT}

# ** [Optional] Uncomment this section to install additional packages. **
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends make \
    build-essential \
    manpages-dev \
    locales \
    tree \
    fonts-powerline \
    fonts-firacode \
    # linuxbrew-wrapper \
    # set up locale
    && locale-gen en_US.UTF-8 && fc-cache -vf

# # https://stackoverflow.com/questions/28721699/root-password-inside-a-docker-container
# RUN echo 'root:Docker!' | chpasswd

