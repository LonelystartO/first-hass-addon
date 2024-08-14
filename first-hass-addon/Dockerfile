ARG BUILD_FROM
FROM $BUILD_FROM

# Install requirements for add-on
RUN \
  apk add --no-cache \
    nodejs \
    npm

# Set working directory
WORKDIR /data

# Copy index.js to the working directory
COPY index.js /data/

# Copy run.sh script
COPY run.sh /

# Make the run.sh script executable
RUN chmod a+x /run.sh

CMD [ "/run.sh" ]