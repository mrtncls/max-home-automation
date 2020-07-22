FROM jlesage/baseimage-gui:debian-10

# Install max-home-automation.
RUN echo "deb [trusted=yes] http://www.dmitry-kazakov.de/distributions buster main" >> /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
    libpython3.7-dev \
    max-home-automation

# Set the name of the application.
ENV APP_NAME="MAX! Home Automation"

# Copy the start script.
COPY startapp.sh /startapp.sh
