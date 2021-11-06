FROM centos:7
#LABEL maintainer "neilcar@redhat.com"
#LABEL build "1614372874"

# RUN yum update -y && 
RUN  yum install -y wget
RUN wget https://repo1.maven.org/maven2/org/apache/tomcat/embed/tomcat-embed-core/9.0.37/tomcat-embed-core-9.0.37.jar

