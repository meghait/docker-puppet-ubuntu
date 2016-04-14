FROM ubuntu:16.04

MAINTAINER Michael Søby Andersen <michael@megha.it>

# Install Puppet.
ADD scripts/install_puppet.sh /tmp/install_puppet.sh
RUN chmod +x /tmp/install_puppet.sh
RUN /tmp/install_puppet.sh

ENTRYPOINT ["puppet"]
