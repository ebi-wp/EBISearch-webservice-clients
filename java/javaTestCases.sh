#!/bin/bash

#COMMAND="java  -classpath java/lib/*:java/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '15' ; exit $?"
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
echo pwd
COMMAND="/usr/lib/jvm/java-8-openjdk-amd64/bin/java  -cp ${scriptPath}/lib/*:${scriptPath}/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient"
echo $COMMAND
$COMMAND