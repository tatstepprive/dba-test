#!/bin/sh
# ----------------------------------------------------------------------------
./mvnw clean install
java -jar /home/dev/.m2/repository/org/home/dba/dba-test/0.0.1-SNAPSHOT/dba-test-0.0.1-SNAPSHOT.jar
