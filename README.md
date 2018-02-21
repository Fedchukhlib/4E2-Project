Instructions for installation of Ssllabs, mozilla-observatory and privacyscore

Ssllabs:

Before installing ssllabs, Go >= 1.3v. should be installed. 

https://golang.org/doc/install?download=go1.10.windows-amd64.msi -> use this link to download go. |i use windows :( |

To ensure that go wa installed properly: go build command should be typed when in C://go/src directory from cmd.

When that has worked out, next step would be to clone the repo of sslabs by using gitbash with a simple command: git clone https://github.com/ssllabs/ssllabs-scan.git

Next step is to change directory to C://go/ssl-labs and use the command to build it again: go build

When that was done, we go to cmd from the directory above, we use a command: ssllabs-scan --json-flat jell.ie(or other test site) 

There is at least 3-4 delay for me until a json would appear.

On the next run of the same tester, there result output is almost instant.

A command for ssllabs-scan --json-flat --hostfile (that would allow to test multiple test sites from a file where they are separated by a line)

Mozilla observatory:

Before installing mozzila-obs, npm or node.js that has npm in it has to be installed by following: https://www.npmjs.com/get-npm

Next step: in command line use the command npm install -g observatory-cli. Before doing the installation, 
a directory should be created for example C://user/"..."/mozilla-obs.

We clone the repository by using git clone https://github.com/mozilla/observatory-cli.git into the above directory.

The command "npm install -g observatory-cli" is used to install mozilla-obs. 

When that command went through, observatory jell.ie --zero --format=report command is used to generate a report that includes
0 scores also. The output here is json format.

A command observatory some.site.name --rescan is used to force a rescan. This could be used as fetching results from cache. 

Privacyscore:

Privacyscore also uses go, so the same procedure is follwoed. The only difference is just creating a new directory for privacyscore in C://users/"..."/go/

Then we clone the repo https://github.com/asciimoo/privacyscore and then use the command in this directory: go build. 

When build succeeds, privacyscore.exe appears in the directory.

To run it in cmd, a command privacyscore.exe some.site.name is usedto run the scan. 

That scan only provides a score for the test site, thus a command created by my project supervisor is used.

This command is used for Ubuntu, thus VM is installed.

This command is: cat index.html  | sed -e 's/<span/\n<span/g' | sed -e 's/<span .*">//' | sed -e 's/<\/span>//g' |
sed -e 's/&quot;/"/g' | grep -v "<" | grep -v ">" | head -1652 | tail -1629 | json_pp 

To get this file, a filename.html was saved when results were generated and this script gets rid of "spans" and "quots" and json_pp 
is used to get the json from this. 

For some reason this doesn't work form me and i get an error. If json_pp is not used, i get the required infor, but not in json format.


