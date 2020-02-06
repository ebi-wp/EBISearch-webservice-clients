#!/bin/bash

#COMMAND="java  -classpath java/lib/*:java/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '14' ; then exit 0 else exit 1?"
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#COMMAND="java  -cp ${scriptPath}/lib/*:${scriptPath}/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient"
COMMAND="java -classpath "${scriptPath}/lib/*:${scriptPath}/jar/eby-client.jar" uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '14' ; ; then exit 0 else exit 1"
echo $COMMAND
$COMMAND