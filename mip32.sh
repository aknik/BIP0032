#!/bin/sh
# https://github.com/richardkiss/pycoin


# Equivalente a https://webhdwallet.github.io/

#http://bip32.org/#bip32        CUSTOM m/0/0



PASSWORD=H:000102030405060708090a0b0c0d0e0f
# PASSWORD=P:"passphrase"


#ku $PASSWORD -s 0H -j | python -c 'import json,sys;obj=json.load(sys.stdin);print obj["wallet_key"]'

echo "m/ih/0/k - Receiving address series for account 'i', with 'k' as index (m/i'/0/k )"
ku $PASSWORD -s 0H/0/0-6 -a 
ku $PASSWORD -s 0H/0/0-6 -W
echo "m/ih/1/k - Change address series for spends from account 'i', with 'k' as index (m/i'/1/k )"
ku $PASSWORD -s 0H/1/0-6 -a
ku $PASSWORD -s 0H/1/0-6 -W


