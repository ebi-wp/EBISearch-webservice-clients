#!/bin/bash

#COMMAND="java  -classpath java/lib/*:java/EBeye_JAXRS.jar uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '15' ; exit $?"
#COMMAND="java  -classpath 'java/lib/*:java/EBeye_JAXRS.jar' uk.ac.ebi.webservices.jaxrs.EBeyeClient --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1 | grep -q '15' ; echo $?"
COMMAND="java -Djava.ext.dirs='java/lib/' -jar java/EBeye_JAXRS.jar --getNumberOfResults hgnc human --endpoint http://www.ebi.ac.uk/ebisearch/ws/rest -debugLevel 1"
echo $COMMAND
$COMMAND