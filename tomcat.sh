#!/bin/bash
REQ_TOMCAT_VERSION="9.0.34"
TOMCAT_MAJOR_VERSION=$(echo ${REQ_TOMCAT_VERSION} | cut -c 1)
URL=http://us.mirrors.quenda.co/apache/tomcat/tomcat-${TOMCAT_MAJOR_VERSION}/v${REQ_TOMCAT_VERSION}/bin/apache-tomcat-#{REQ_TOMCAT_VERSION}.tar.gz
wget $URL
echo ${TOMCAT_MAJOR_VERSION}
