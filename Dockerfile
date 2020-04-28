FROM open-liberty
#COPY jenkins.war ./
COPY --chown=1001:0  jenkins.war /config/dropins/
COPY --chown=1001:0  server.xml /config/
#EXPOSE 8080
#CMD ["java", "-jar", "/opt/app/jenkins.war"]
RUN configure.sh
