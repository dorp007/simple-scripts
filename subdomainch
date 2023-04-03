import dns.resolver

def check_domain(domain):
    # Check the A record
    try:
        answers = dns.resolver.query(domain, 'A')
        for rdata in answers:
            print(f'{domain} A {rdata.address}')
    except dns.resolver.NoAnswer:
        print(f'{domain} A not found')
        
    # Check the MX record
    try:
        answers = dns.resolver.query(domain, 'MX')
        for rdata in answers:
            print(f'{domain} MX {rdata.exchange} {rdata.preference}')
    except dns.resolver.NoAnswer:
        print(f'{domain} MX not found')
        
    # Check the TXT record
    try:
        answers = dns.resolver.query(domain, 'TXT')
        for rdata in answers:
            print(f'{domain} TXT {rdata}')
    except dns.resolver.NoAnswer:
        print(f'{domain} TXT not found')
        
    # Check the NS record
    try:
        answers = dns.resolver.query(domain, 'NS')
        for rdata in answers:
            print(f'{domain} NS {rdata}')
    except dns.resolver.NoAnswer:
        print(f'{domain} NS not found')

def check_subdomains(domain):
    # Check subdomains using common prefixes
    prefixes = ['www', 'mail', 'webmail', 'ftp', 'blog']
    for prefix in prefixes:
        subdomain = f'{prefix}.{domain}'
        check_domain(subdomain)

    # Check other subdomains recursively
    try:
        answers = dns.resolver.query(domain, 'NS')
        for rdata in answers:
            ns = rdata.to_text().rstrip('.')
            subdomain = f'{prefix}.{ns}'
            check_subdomains(subdomain)
    except dns.resolver.NoAnswer:
        pass

# Usage example
check_domain('example.com')
check_subdomains('example.com')
