#!/bin/bash
 
# Define the path to the file containing the IP addresses
ip_file="ips.txt"
 
# Read the IP addresses from the file
ips=()
while IFS= read -r line; do
    ips+=("$line")
done < "$ip_file"
 
# Generate the job configuration
for i in "${!ips[@]}"; do
    index=$((i + 1))
    ip=${ips[i]}
    echo "  - job_name: \"apache$index\""
    echo "    static_configs:"
    echo "      - targets: [\"$ip:9117\"]"
    echo
done
