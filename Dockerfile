# Base image
FROM tomcat:9.0-jdk11

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR into Tomcat's webapps folder
COPY target/ABCtechnologies-1.0.war /usr/local/tomcat/webapps/abc_tech.war

# Expose HTTP port
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
