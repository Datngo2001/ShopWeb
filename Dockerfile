FROM tomcat:8.5.70-jdk16-openjdk-buster
WORKDIR '/app'
COPY . .
RUN rm -rf /usr/local/tomcat/webapps/*
COPY ./target/Shop-0.0.1-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
EXPOSE 8080
CMD ["catalina.sh", "run"]