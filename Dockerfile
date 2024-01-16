FROM calcom/cal.com

RUN apt-get update && apt-get install -y --no-install-recommends \
    sendmail \
    netcat