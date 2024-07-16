# Use the official Ghost image from Docker Hub
FROM ghost:latest

# Copy configuration file
COPY config.production.json /var/lib/ghost/config.production.json

# Expose the port Ghost is running on
EXPOSE 2368

# Run Ghost
CMD ["npm", "start", "--production"]
