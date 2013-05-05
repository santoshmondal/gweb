Adding external directories to your Apache Tomcat webapp path.
My Solution:
To solve this I needed to add what Apache calls a context path which can be done by adding an xml file.
Here’s a bit of given information so this is easier to follow.
I’m using Tomcat 5.5
The name of my webapp is called MyProject which is located at $CATALINA_HOME/webapps/MyProject
The directory I’m trying to add to Tomcat’s path is “D:\photos“
I want my photos to be accessible in the path $CATALINA_HOME/webapps/MyProject/photos (or http://localhost:8080/MyProject/photos).
Creating the context file:
In $CATALINA_HOME/conf/[enginename]/[hostname]/ (in my case $CATALINA_HOME/conf/Catalina/localhost/) create a file called “MyProject#photos.xml“.  The value before the # is your webapp name and the value after is the path you want added.
In this file add: <Context docBase=”d:\photos” /> and save.
Restart Tomcat.


MOER LINK::
http://whatwouldnickdo.com/wordpress/157/tomcat-images-directory/
http://tomcat.apache.org/tomcat-7.0-doc/config/context.html
http://harkiran-howtos.blogspot.in/2009/08/map-external-directory-into-your.html