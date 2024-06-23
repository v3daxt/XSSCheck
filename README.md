This Bash script is designed to scan a list of domains for Cross-Site Scripting (XSS) vulnerabilities using specified payloads. The script automates the process of injecting XSS payloads into URLs found via Wayback Machine and checking for vulnerabilities.


### USAGE
```./xss_scanner.sh domain_file payload_file```
![Tool](https://github.com/v3daxt/XXSCheck/assets/69508556/ff13fe09-62d6-4f1a-945a-a44cdde319f8)


domain_file: A file containing a list of domains to be scanned, one domain per line.  
payload_file: A file containing XSS payloads, one payload per line.  

### Requirements
Ensure the following tools are installed and accessible in your PATH:

**waybackurls:** Fetches URLs from the Wayback Machine.  
**qsinject:** Injects query strings into URLs.  
**freq:** Analyzes and identifies potential XSS vulnerabilities.  

### Note: False Positives

**This tool may generate false positive results. I am actively working on improving its accuracy.**  

- **False positives** occur when the tool incorrectly identifies vulnerabilities that do not actually exist.  
- **Feedback and suggestions** are welcome to help refine the tool and reduce false positives.  

If you encounter false positives or have ideas for improvement, please open an [issue] or [contribute]to the project.  

Thank you for your understanding and support!  
