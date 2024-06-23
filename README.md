This Bash script is designed to scan a list of domains for Cross-Site Scripting (XSS) vulnerabilities using specified payloads. The script automates the process of injecting XSS payloads into URLs found via Wayback Machine and checking for vulnerabilities.


### USAGE
```./xss_scanner.sh domain_file payload_file```

domain_file: A file containing a list of domains to be scanned, one domain per line.
payload_file: A file containing XSS payloads, one payload per line.


### Requirements
Ensure the following tools are installed and accessible in your PATH:

**waybackurls:** Fetches URLs from the Wayback Machine.
**qsinject:** Injects query strings into URLs.
**freq:** Analyzes and identifies potential XSS vulnerabilities.

