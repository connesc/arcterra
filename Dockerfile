FROM alpine:3.11
COPY --from=connesc/gost:2.11.0 /gost /usr/local/bin/
CMD gost -L http://$AUTH@:8080
EXPOSE 8080
