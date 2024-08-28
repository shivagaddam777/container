# Use an official lightweight image as a base
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && \
    apt-get install -y \
    bash \
    procps

# Copy the script into the container
COPY get_memory_info.sh /usr/local/bin/get_memory_info.sh

# Make the script executable
RUN chmod +x /usr/local/bin/get_memory_info.sh

# Set the entrypoint to run the script
ENTRYPOINT ["/usr/local/bin/get_memory_info.sh"]
