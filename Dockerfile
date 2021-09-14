FROM ubuntu:20.04

RUN apt-get update && apt-get -y dist-upgrade && apt-get install -y tor nyx && echo "" >> /etc/tor/torrc && echo "ExitPolicy reject *:*" >> /etc/tor/torrc && echo "ExitPolicy reject6 *:*" >> /etc/tor/torrc && echo "ORPort 9001" >> /etc/tor/torrc && echo "DirPort 9030" >> /etc/tor/torrc && echo "Nickname iddqd" >> /etc/tor/torrc && echo "ControlPort 9051" >> /etc/tor/torrc && echo "HiddenServiceDir /var/lib/tor/hsv3" >> /etc/tor/torrc && echo "HiddenServiceVersion 3" >> /etc/tor/torrc && echo "HiddenServicePort 6668 192.168.100.112:10987" >> /etc/tor/torrc 

EXPOSE 9001 9030

CMD tor
