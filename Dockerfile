FROM calcom/cal.com

RUN apt-get update && apt-get install -y --no-install-recommends \
    sendmail \
    netcat-traditional

WORKDIR /calcom/scripts

COPY --chmod=755 docker-entrypoint.sh ./

ENTRYPOINT ["docker-entrypoint.sh"]

CMD ["/calcom/scripts/start.sh"]