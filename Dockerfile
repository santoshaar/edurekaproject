# Use the devopsedu/webapp image as the base image
FROM devopsedu/webapp

# Set the working directory inside the container
WORKDIR /var/www/html

# Copy your PHP website files to the container's working directory
COPY . /var/www/html

# Expose the web server port
EXPOSE 80

# Start the Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
