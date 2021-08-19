#!/usr/bin/env bash

# Exit on error or on unset variable
set -eu

cargo fmt
cargo clippy --all-targets --all-features -- -D warnings
cargo build --release
zip -j lambda.zip ./target/x86_64-unknown-linux-musl/release/bootstrap
