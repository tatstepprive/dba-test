#!/bin/sh
# ----------------------------------------------------------------------------
./mvnw clean install
java -jar ./target/dba-test-0.0.1-SNAPSHOT.jar
