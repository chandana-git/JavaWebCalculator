FROM openjdk:12-alpine
RUN java -version
COPY target/WebAppCal-0.0.3.war  /WebAppCal.war
CMD ["java","-jar","/WebAppCal.war"]
