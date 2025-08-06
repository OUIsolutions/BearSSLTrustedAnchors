# BearSSLTrustedAnchors
Trusted Anchors generator for BearSSL

The TrustAnchors are generated based on [curl certifications](https://curl.se/docs/caextract.html)
downloaded from [https://curl.se/ca/cacert.pem](https://curl.se/ca/cacert.pem).

and generated with the `brssl` tool from [BearSSL](https://bearssl.org/).

## Generating 
```bash
sh generator.sh 
```

## Releases 
| item | data | 
|-------|------|
| [BearSSLTrustedAnchors.c](https://github.com/OUIsolutions/BearSSLTrustedAnchors/releases/download/2025-8-6/BearSSLTrustAnchors.c)| 2025/08/06 |
