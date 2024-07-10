#!/bin/sh

set -eu

if [ "$(id -u)" -ne 0 ]
  then echo "This script must be executed as the root user"
  exit
fi

tpm2_createek -c ek.handle -G ecc -u ek.pub
tpm2_createak -C ek.handle -G ecc -g sha256 -s ecdsa --ak-context "ak.ctx" --public "ak_public.pem" --format "pem" 
tpm2_evictcontrol -C o -c ak.ctx 0x8101000D

echo "Public Key: ak_public.pem"
public_key=$(base64 -w 0 ak_public.pem)
echo "$public_key" | qrencode -t ANSIUTF8

echo "Complete"