FROM mongo:6.0

# Set environment variables for MongoDB but allow them to be passed during runtime
ENV MONGO_INITDB_ROOT_USERNAME=${MONGO_INITDB_ROOT_USERNAME}
ENV MONGO_INITDB_ROOT_PASSWORD=${MONGO_INITDB_ROOT_PASSWORD}

# Expose MongoDB default port
EXPOSE 27017

# Start MongoDB with smaller cache size
CMD ["mongod", "--wiredTigerCacheSizeGB", "0.2"]
