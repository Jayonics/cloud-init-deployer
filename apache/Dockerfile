FROM httpd:${APACHE_VERSION:-bullseye}
SHELL ["/bin/bash", "-c"]

ENV APACHE_CONF_DIR=${APACHE_CONF_DIR:-"/usr/local/apache2"}
# COPY SHARED CONFIGURATIONS
#RUN chown -vR www-data:www-data ${APACHE_CONF_DIR}/conf-enabled

# Remove the default apache configuration
#RUN rm -v ${APACHE_CONF_DIR}/conf/extra/httpd-vhosts.conf
# Start the container
RUN echo "Include ${APACHE_CONF_DIR}/conf-enabled/*.conf" >> ${APACHE_CONF_DIR}/conf/httpd.conf
RUN echo "Include ${APACHE_CONF_DIR}/sites-enabled/*.conf" >> ${APACHE_CONF_DIR}/conf/httpd.conf
