# BearSSLTrustedAnchors

A trusted CA certificates generator for BearSSL applications, providing a ready-to-use C source file with trusted root certificates.

## Latest Release

| File | Version | Date |
|------|---------|------|
| [BearSSLTrustedAnchors.c](https://github.com/OUIsolutions/BearSSLTrustedAnchors/releases/download/2025-8-6/BearSSLTrustAnchors.c) | 2025-8-6 | 2025/08/06 |

## Overview

This project generates trusted anchor certificates for [BearSSL](https://bearssl.org/) from the official Mozilla CA certificate bundle. The generated C source file contains all trusted root certificates in a format that can be directly compiled into BearSSL applications.

### Certificate Source

The trusted anchors are generated from:
- **Source**: [Mozilla CA Certificate Bundle](https://curl.se/docs/caextract.html)  
- **URL**: [https://curl.se/ca/cacert.pem](https://curl.se/ca/cacert.pem)
- **Tool**: `brssl` from [BearSSL](https://bearssl.org/)

## Usage

### Generating New Certificates

To generate an updated certificate file:

```bash
sh generator.sh
```

This script will:
1. Download the latest CA certificate bundle from Mozilla
2. Convert it to BearSSL format using the `brssl` tool
3. Generate the `BearSSLTrustedAnchors.c` file

### Requirements

- [BearSSL](https://bearssl.org/) tools (`brssl`)
- `curl` or `wget` for downloading certificates
- `bash` shell
