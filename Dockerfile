
//FROM openjdk:12-alpine
//RUN java -version
//COPY target/WebAppCal-0.0.3.war  /WebAppCal.war
//EXPOSE 8081
//ENTRYPOINT ["java","-jar","/WebAppCal.war"]
FROM tomcat:8.0-alpine
ADD target/WebAppCal-0.0.3.war /usr/local/tomcat/webapps/
EXPOSE 8081
CMD ["catalina.sh", "run"]
