#!/bin/sh

# Install Solana
sh -c "$(curl -sSfL https://release.solana.com/v1.16.0/install)"
export PATH="/root/.local/share/solana/install/active_release/bin:$PATH"

# Install Anchor
cargo install --git https://github.com/coral-xyz/anchor avm --locked --force
avm install latest
avm use latest

# Install project dependencies
npm install

# Initialize Solana config
solana config set --url devnet
