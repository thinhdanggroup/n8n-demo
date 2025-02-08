FROM n8nio/n8n:latest

USER root

# Create n8n directory and set permissions
RUN mkdir -p /root/.n8n && \
    chmod 700 /root/.n8n

WORKDIR /home/node/packages/cli
ENTRYPOINT []

COPY ./entrypoint.sh /
RUN chmod +x /entrypoint.sh
CMD ["/entrypoint.sh"]
