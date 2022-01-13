#!/bin/bash

# We are sometimes provided with a Base 64 cert, this turns it into a valid PEM file.

CERT=$(cat "$1" | sed 's/-----.* CERTIFICATE-----//g'  | fold -w 63)
echo -e -n "-----BEGIN CERTIFICATE-----\n${CERT}\n-----END CERTIFICATE-----\n" > "${1}.pem"
