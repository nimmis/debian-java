## Debian with Java

This is docker images of debian with different versions of java

### Examples

This images are build on nimmis/ubuntu which are a modified version of ubuntu with a working 
init process, fixes for some docker bugs and a working cron and syslog. Services are started with
supervisor daemon, for more information about that see [nimmis/debian](https://registry.hub.docker.com/u/nimmis/debian/)

#### starting the container with a normal shell

	docker run -ti nimmis/debian-java /bin/bash

This will start the container with a normal shell, no cron or other systems are started

#### starting the container as a daemon

	docker run -d nimmis/debian-java

This will start the container with the init process running, access the container with

	docker exec -ti <container ID> /bin/bash

### Loading different versions of java

The different version is determined with the TAG 

The available version are 

* latest - currently OpenJDK Java version 8 JRE
* openjdk-7-jdk          - OpenJDK Java version 7 JDK
* openjdk-7-jre          - OpenJDK Java version 7 JRE
* openjdk-7-jre-headless - OpenJDK Java version 7 JRE headless
* openjdk-8-jdk          - OpenJDK Java version 8 JDK
* openjdk-8-jre          - OpenJDK Java version 8 JRE
* openjdk-8-jre-headless - OpenJDK Java version 8 JRE headless
* oracle-7-jdk           - Oracle Java version 7 JDK
* oracle-8-jdk           - Oracle Java version 8 JDK

Example to run a container with OpenJDK version 7 JDK

	docker run -d nimmis/debian-java
