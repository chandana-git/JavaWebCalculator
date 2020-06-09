FROM openjdk:12-alpine
RUN java -version
COPY target/WebAppCal-0.0.3.war  /WebAppCal.war
EXPOSE 8081
CMD ["java","-jar","/WebAppCal.war"]
