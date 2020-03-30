FROM v2fly/v2fly-core:v4.23.1
ENTRYPOINT ["sh", "-c", "mkdir -p /etc/v2ray; echo \"$CONFIG\" > /etc/v2ray/config.json; exec \"$@\"", "entrypoint"]
CMD ["v2ray", "-config=/etc/v2ray/config.json"]
