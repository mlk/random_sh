#!/bin/bash

# We are sometime provided a single PEM file containing multiple certs.
# This splits them out into individual certs.
# Note: On not-a-mac you may need to change 'gcsplit' to 'csplit'

gcsplit --digits=2  --quiet --prefix=outfile "$1" "/-----END CERTIFICATE-----/+1" "{*}"
