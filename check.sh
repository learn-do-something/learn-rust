#! /bash/bin
echo "==================================="
echo "Current folder [pwd]:"
pwd

echo "==================================="
echo "Who am I? [whoami]"
whoami

echo "==================================="
echo "Git Hub Config"
echo $GITHUB_USER
echo $GITHUB_TOKEN
echo $GIT_USERNAME
echo $GIT_EMAIL

echo "==================================="
echo "Go Version [go version]"
go version

echo "==================================="
echo "Python Version [python --version]"
python --version

echo "==================================="
echo "Rust Version [rustup --version] [rustc --version] [cargo --version]"
rustup --version
rustc --version
cargo --version

echo "==================================="
echo "Docker Version [docker --version]"
docker --version

echo "==================================="

