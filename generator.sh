#!/bin/bash

# Remove BearSSL directory if it exists
rm -rf BearSSL

# Clone BearSSL repository
git clone https://www.bearssl.org/git/BearSSL

# Download CA certificates
curl -L https://curl.se/ca/cacert.pem -o BearSSL/cacert.pem

# Build BearSSL
cd BearSSL && make
cd ..

# Make brssl executable
chmod +x BearSSL/build/brssl

# Generate trust anchors file
./BearSSL/build/brssl ta BearSSL/cacert.pem > BearSSLTrustAnchors.c

# Clean up by removing BearSSL directory
rm -rf BearSSL