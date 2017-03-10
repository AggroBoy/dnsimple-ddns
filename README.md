# dnsimple-ddns
A bash script to keep a dnsimple DNS record up to date with your (dynamic) IP.

Note that the install script assumes your servers look a lot like mine, and could easily cause damage if used carelessly.
You probably shouldn't use it unless you're very sure it meets your needs. It's only a convenience anyway; just put the script in
/opt/ddns, create /etc/ddnsrc with the correct values, install the .service and go!
