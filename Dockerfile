FROM typesense/typesense:0.25.2

EXPOSE 8108

ENV TYPESENSE_API_KEY=xyz \
    TYPESENSE_DATA_DIR=/data \
    TYPESENSE_ENABLE_CORS=true \
    PORT=8108

RUN mkdir -p /data

VOLUME /data


CMD ["/typesense-server", "--data-dir", "/data", "--api-key", "xyz", "--enable-cors"]
