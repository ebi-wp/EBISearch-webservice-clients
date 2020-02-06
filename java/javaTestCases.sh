#!/bin/bash

#COMMAND="java  -classpath java/lib/*:java/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '15' ; exit $?"
scriptPath="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
#COMMAND="java  -cp ${scriptPath}/lib/*:${scriptPath}/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient"
#COMMAND="java -classpath "${scriptPath}/lib/*:${scriptPath}/jar/eby-client.jar" uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '14' ; exit 1"
COMMAND="java -classpath "java/lib/*:java/jar/eby-client.jar" uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '15' ;  [ $? -eq 0 ]  || return 1"
$COMMAND