FROM ubuntu:latest
WORKDIR /app
ENV APP_ENV=production
COPY app.sh /app/app.sh
RUN chmod +x /app/app.sh
HEALTHCHECK CMD test -f /app/app.sh || exit 1
CMD ["/app/app.sh"]
