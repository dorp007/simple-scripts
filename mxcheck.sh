#!/bin/bash

domain=$1

# Resolve A records
echo "A records:"
dig +short $domain

# Resolve MX records
echo "MX records:"
dig +short $domain MX

# Resolve TXT records
echo "TXT records:"
dig +short $domain TXT

# Resolve NS records
echo "NS records:"
dig +short $domain NS

# List subdomains
echo "Subdomains:"
for subdomain in $(dig +short $domain NS | awk '{print $1}'); do
    dig +short $subdomain
done
