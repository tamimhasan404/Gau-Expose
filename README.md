# Gau-Expose  
  ![Analyze your gau result with22222](https://user-images.githubusercontent.com/78614799/160250487-d6efb315-5c51-4094-a2b3-ae45e523c19f.png)
  
## 👉 Very effective when you have big gau result

## What Gau Expose tool does?
👉 It makes your work a bit easier while analyzing gau results Also It's greater some other useful things from your gau results like
* gather subdomains
* gather possible sensitive file like bak,zip,xlsx etc
* gather panel stuff
* gather robots.txt
* gather emails/usernames
* gather error
* gather third-party assets (jira,grafana etc)
* gather apis like graphql
* gather wordlist for directory brute-force

🎯 Details explation about this tool and it's results:
- https://tamimhasan404.medium.com/analyze-your-gau-result-with-gau-expose-tool-124edf7682b7

++ Now before starting You have to do
Install gauplus and uro tool

* Gauplus: 

``go install github.com/bp0lr/gauplus@latest``

++ If this method isn't working install gauplus manually

``git clone https://github.com/bp0lr/gauplus.git``

``cd gauplus``

``go build``

``mv gauplus /usr/local/bin/``

* Uro

`pip3 install uro`

++ Run your gauplus tool on your target live domains
cat live-domains.txt | gauplus -t 30 > gau-urls.txt

++ Now just run Gau Expose tool
`bash gau-expose.sh`

✔ Then put your gau-urls.txt paths that's it.

* Inspire by (https://twitter.com/_Sm9l)

![contributions welcome](https://img.shields.io/badge/contributions-welcome-brighteen.svg?style=flat) <a href="https://twitter.com/tamimhasan404">
    <img src="https://img.shields.io/badge/author-@tamimhasan404-orange.svg?style=square&logo=twitter">
  </a>
  
  - [ ] 🎦 **Vedio**
  https://www.youtube.com/watch?v=c1ZAWAadOE8
  
