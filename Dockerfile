FROM rpi-mariadb:latest
MAINTAINER Carsten Payenberg <carsten dot payenberg@googlemail dot com>

# Install build packages
# Update the running template first
RUN apt-get update && apt-get install apt-utils --no-install-recommends -y
RUN apt-get dist-upgrade -y --no-install-recommends -o Dpkg::Options::="--force-confdef" -o Dpkg::Options::="--force-confold"

# Install Apache webserver
RUN apt-get install apache2 --no-install-recommends

# Install PHP5 - ToDo: Migration to php7
RUN apt-get install libapache2-mod-php5 php5 php-pear php5-xcache php5-mysql --no-install-recommends

# Install git for getting projectsend from GitHub
RUN apt-get install git --no-install-recommends

# Config / Download
# Remove the standard Apache files
RUN rm -rf /var/www/html/*

# Clone the Projectsend repository and set the access rights
RUN git clone https://github.com/ignacionelson/ProjectSend.git /var/www/html/
RUN chown -R www-data:www-data /var/www/html/*

# Remove git again - as it is no longer used
RUN apt-get remove git -y

# Clean the packages
RUN apt-get autoclean && apt-get autoremove -y
RUN apt-get clean
RUN apt-get purge -y

# Ports to be exposed
EXPOSE 80

# Copy the projectsend script to the root.
# The script will do the project setup in case it isnt't already set up.
COPY projectsend /

# Reset the Entrypoint given from rpi-mariadb
ENTRYPOINT [""]

# Set the projectsend-script to be executed
CMD ["/projectsend"]
