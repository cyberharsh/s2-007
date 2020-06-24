FROM vulhub/tomcat:8.5

ADD flagA /etc/

RUN set -ex \
    && rm -rf /usr/local/tomcat/webapps/* \
    && chmod a+x /usr/local/tomcat/bin/*.sh

COPY S2-007.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
