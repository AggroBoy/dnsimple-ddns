#!/usr/bin/zsh

sudo systemctl stop dnsimple-ddns
sudo cp dnsimple-ddns.service /usr/lib/systemd/system
sudo mkdir -p /opt/ddns
sudo cp ddns.sh /opt/ddns
sudo systemctl --system daemon-reload
if [ ! -e "$file" ] ; then
    sudo cp ddnsrc.sample /etc/ddnsrc
    sudo chmod 600 /etc/ddnsrc
    echo Now go and edit /ets/ddnsrc, then start the servce.
else
    sudo systemctl start dnsimple-ddns
fi

