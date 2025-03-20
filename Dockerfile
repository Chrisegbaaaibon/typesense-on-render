FROM typesense/typesense:0.24.0

EXPOSE 8108

ENV TYPESENSE_API_KEY=xyz \
    TYPESENSE_DATA_DIR=/data \
    TYPESENSE_ENABLE_CORS=true

CMD ["/typesense-server", "--data-dir", "/data", "--api-key", "xyz", "--enable-cors"]
