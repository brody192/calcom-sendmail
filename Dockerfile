FROM calcom/cal.com

RUN apt-get update && apt-get install -y --no-install-recommends \
    sendmail \
    netcat-traditional

WORKDIR /calcom

COPY --chmod=755 docker-entrypoint.sh /calcom/scripts

ENTRYPOINT ["/calcom/scripts/docker-entrypoint.sh"]

CMD ["/calcom/scripts/start.sh"]