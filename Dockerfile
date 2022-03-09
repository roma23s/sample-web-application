FROM tomcat 
WORKDIR webapps 
RUN mkdir /apps
COPY target/WebApp.war /apps
RUN rm -rf ROOT && mv WebApp.war ROOT.war
ENTRYPOINT ["sh", "/usr/local/tomcat/bin/startup.sh"]
