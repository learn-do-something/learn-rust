#! /bash/bin

# https://www.rust-lang.org/learn/get-started
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
# https://dev.to/kaiwalter/install-rust-toolchain-management-with-cloud-init-on-an-linux-azure-vm-2o51
# curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | bash -s -- -y --no-modify-path --default-toolchain stable --profile default

echo 'source "$HOME/.cargo/env"' >> $HOME/.profile
echo 'source "$HOME/.cargo/env"' >> $HOME/.bashrc
echo 'source "$HOME/.cargo/env"' >> $HOME/.zshrc

rustup --version
rustc --version
cargo --version

mkdir -p ~/.local/bin
curl -L https://github.com/rust-lang/rust-analyzer/releases/latest/download/rust-analyzer-x86_64-unknown-linux-gnu.gz | gunzip -c - > ~/.local/bin/rust-analyzer
chmod +x ~/.local/bin/rust-analyzer