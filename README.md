# dnsimple-ddns
# A bash script to keep a dnsimple DNS record up to date with your (dynamic) IP.

Note that the install script assumes your servers look a lot like mine, and
could easily cause damage if used carelessly.  You probably shouldn't use it
unless you're very sure it meets your needs. It's only a convenience anyway;
just put the script in /opt/ddns, create /etc/ddnsrc (or ~/.ddnsrc) with the correct
values, install the .service and go!

## Config

There are four parameters that need to be set in /etc/ddnsrc (or ~/.ddnsrc):

* **`TOKEN`** : The oauth2 access token for your dnsimple account; this can
    (must) be created on the dnsimple website.
* **`ACCOUNT_ID`** : The ID of your dnsimple account.
* **`ZONE-ID`** : The zone (domain) containing the record you want to update.
* **`RECORD_ID`** : The ID of the record you want to update.

The best way to get `ACCOUNT_ID`, `ZONE_ID` and `RECORD_ID` is from the URL
of the edit record page of the dnsimple website. For example, if you're
looking at the edit record page for the record you want the script to upade,
and the URL is:

    https://dnsimple.com/a/123456/domains/foo.com/records/098765/edit

Then the `ACCOUNT_ID` is `123456`, the `ZONE_ID` is `foo.com` and the
`RECORD_ID` is `098765`.

Also note that dnsimple have excellent online documentation that covers
all of this (and way more) at https://developer.dnsimple.com
