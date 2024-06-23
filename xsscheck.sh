#!/bin/bash

# Check if the correct number of arguments is provided
if [ "$#" -ne 2 ]; then
    echo "Usage: $0 domain_file payload_file"
    exit 1
fi

domain_file="$1"
payload_file="$2"

# Check if domain file exists
if [ ! -f "$domain_file" ]; then
    echo "Domain file $domain_file not found."
    exit 1
fi

# Check if payload file exists
if [ ! -f "$payload_file" ]; then
    echo "Payload file $payload_file not found."
    exit 1
fi

# Read payloads from the payload file and join them with commas
payloads=$(paste -sd, "$payload_file")

# Loop through each domain in the domain file
while IFS= read -r domain; do
    # Print domain for visibility
    echo "Scanning domain: $domain"

    # Pipe the commands together
    waybackurls "$domain" | qsinject -i "$payloads" | freq | grep "XSS FOUND:"

done < "$domain_file"
