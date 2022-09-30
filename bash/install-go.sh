#! /bash/bin


# https://go.dev/doc/install
# https://golangdocs.com/install-go-linux
# The Go Linux binary can be downloaded by going to the site https://go.dev/ and then get link on button Download Go.
# 17-09-2022 : go1.19.1.linux-amd64.tar.gz

wget https://go.dev/dl/go1.19.1.linux-amd64.tar.gz

sudo tar -C /usr/local/ -xzf go1.19.1.linux-amd64.tar.gz

# cd /usr/local/
ls -l /usr/local/
# Set the PATH for Go
echo $PATH

go version

go env

# https://medium.com/@jeremiedaniel48/how-to-set-up-gopath-and-goroot-for-go-and-how-to-run-test-on-quic-go-dd9808b44efe
mkdir "$HOME/go"
GO_EXPORT="
export GOROOT="/usr/local/go"
export GOPATH="$HOME/go"
export GOBIN="$GOPATH/bin"
export PATH=$PATH:$GOBIN
export PATH=$PATH:$GOROOT/bin
export GO111MODULE=on
export PATH=$PATH:$GOROOT/bin:$GOBIN
"
# sudo nano $HOME/.profile
# add end line in file .profile
# export PATH=$PATH:/usr/local/go/bin
echo $GO_EXPORT >> $HOME/.profile
echo $GO_EXPORT >> $HOME/.bashrc
echo $GO_EXPORT >> $HOME/.zshrc

# source $HOME/.profile
# source $HOME/.bashrc
# source $HOME/.zshrc

go env

rm go1.19.1.linux-amd64.tar.gz