FROM s390x/websphere-liberty
WORKDIR  /opt/app
COPY jenkins.war ./
EXPOSE 8080
CMD ["java", "-jar", "/opt/app/jenkins.war"]

