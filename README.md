# simple-scripts
This is a repo with some usefull scripts


This script resolves all possible DNS records (A, AAAA, CNAME, MX, TXT, NS) for the specified domain, and then lists all subdomains by querying the nameservers returned by the NS records. Note that this script assumes that the nameservers for the domain are publicly accessible and can be queried with the dig command.

Save this script to a file (e.g. dns-check-all.sh), make it executable (chmod +x dns-check-all.sh), and run it with the domain name as the argument:

'./dns-check-all.sh example.com'
