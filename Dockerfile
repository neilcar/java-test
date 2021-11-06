#FROM centos:7
#LABEL maintainer "neilcar@redhat.com"
#LABEL build "1614372874"

# RUN yum update -y && 
#RUN yum install -y python python3-pip wget curl httpd
#RUN pip3 install Flask
# 
#RUN yum upgrade -y
# RUN apt remove -y wget curl libcurl4-openssl-dev libcurl3 libcurl3-gnutls
#RUN rpm -e $(rpm -qa *rpm*) $(rpm -qa *dnf*) $(rpm -qa *libsolv*) $(rpm -qa *hawkey*) $(rpm -qa yum*)

FROM gitlab/gitlab-ce:14.0.0-ce.0
ENV PLATFORM ubuntu_x86_64
RUN if [ "$PLATFORM" = "ubuntu_x86" ] || [ "$PLATFORM" = "ubuntu_arm" ]; then apt-get update && apt-get -y install --no-install-recommends systemd=237-3ubuntu10.50; else apt-get update && apt-get -y install --no-install-recommends systemd=245.4-4ubuntu3.13 ; fi    
WORKDIR /home
