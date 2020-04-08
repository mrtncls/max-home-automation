FROM jlesage/baseimage-gui:debian-10

# Install max-home-automation.
# COPY sources.list.d/* /etc/apt/sources.list.d/
#RUN apt-get update && apt-get install max-home-automation-3.15
RUN wget http://www.dmitry-kazakov.de/distributions/pool/main/m/max-home-automation/max-home-automation_3.15_amd64.deb
RUN apt install max-home-automation_3.15_amd64.deb

# Set the name of the application.
ENV APP_NAME="MAX! Home Automation"

# Copy the start script.
COPY startapp.sh /startapp.sh
