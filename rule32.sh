#!/bin/bash

SHA=`cat /etc/login.defs | grep "ENCRYPT_METHOD SHA512"`
SHA_ROUNDS=`cat /etc/login.defs | grep "SHA_CRYPT_MIN_ROUNDS 65536"`

if [ "$SHA" == "ENCRYPT_METHOD SHA512" ] \
&& [ "$SHA_ROUNDS" == "SHA_CRYPT_MIN_ROUNDS 65536" ]
then
  echo OK
else
  echo KO
fi