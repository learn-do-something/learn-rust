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

GO_EXPORT='
export GOROOT="/usr/local/go"
\nexport GOPATH="$HOME/go"
\nexport GOBIN="$GOPATH/bin"
\nexport GO111MODULE=on
\nexport PATH="$PATH:$GOROOT/bin:$GOBIN"
\n
'
# sudo nano $HOME/.profile
# add end line in file .profile
# export PATH=$PATH:/usr/local/go/bin
echo -e $GO_EXPORT >> $HOME/.profile
echo -e $GO_EXPORT >> $HOME/.bashrc
echo -e $GO_EXPORT >> $HOME/.zshrc

# source $HOME/.profile
# source $HOME/.bashrc
# source $HOME/.zshrc

export GOROOT="/usr/local/go"
export PATH="$PATH:$GOROOT/bin"
go env

rm go1.19.1.linux-amd64.tar.gz