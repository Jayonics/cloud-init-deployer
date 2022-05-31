# COPY SHARED CONFIGURATIONS
RUN chown -vR www-data:www-data ${APACHE_CONF_DIR}/conf-enabled

# Start the container
RUN echo "Include ${APACHE_CONF_DIR}/conf-enabled/*.conf" >> ${APACHE_CONF_DIR}/conf/httpd.conf
RUN echo "Include ${APACHE_CONF_DIR}/sites-enabled/*.conf" >> ${APACHE_CONF_DIR}/conf/httpd.conf
