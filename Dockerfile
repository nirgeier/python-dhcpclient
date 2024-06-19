FROM  alpine

RUN                   \
  apk update      &&  \   
  apk upgrade     &&  \
  apk add bash git vim python3

RUN     git clone https://github.com/nirgeier/python-dhcpclient.git
WORKDIR python-dhcpclient

RUN     ls -la

ENTRYPOINT [ "./entrypoint.sh" ]
CMD ["sleep","inf"]
