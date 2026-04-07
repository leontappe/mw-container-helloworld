FROM busybox:1.36

WORKDIR /www

RUN printf '%s\n' \
  '<!doctype html>' \
  '<html>' \
  '  <head><meta charset="utf-8"><title>Hello</title></head>' \
  '  <body><h1>Hello, world!</h1></body>' \
  '</html>' > /www/index.html

EXPOSE 8080

CMD ["httpd", "-f", "-p", "8080", "-h", "/www"]
