# AWS Maven + Tomcat Deployment Practice

A small Java web application for practicing deployment to an Ubuntu EC2 instance using Maven and Apache Tomcat.

## Compatibility
- Apache Tomcat 10.1.x (uses `jakarta.servlet`)
- JDK 11 or later
- Maven 3.8 or later

## Project structure
```text
aws-maven-tomcat-practice/
├── pom.xml
└── src/main/
    ├── java/com/practice/HelloServlet.java
    └── webapp/
        ├── index.jsp
        └── WEB-INF/web.xml
```

## 1. Build the WAR file
Run these commands from the folder containing `pom.xml`:

```bash
mvn clean package
ls -l target/
```

Expected output file:
`target/aws-maven-tomcat-practice.war`

## 2. Deploy on your Ubuntu EC2 instance
Make sure your EC2 security group allows inbound HTTP traffic on port 8080 from your own IP while practicing. Avoid opening SSH (port 22) to everyone.

Check Java and Tomcat:
```bash
java -version
sudo systemctl status tomcat
```

If your Tomcat is installed at `/opt/tomcat` and you built the WAR on EC2:
```bash
sudo cp target/aws-maven-tomcat-practice.war /opt/tomcat/webapps/
```

If you built the WAR on your own computer, copy the WAR to EC2 first (replace the placeholders):
```bash
scp -i /path/to/your-key.pem target/aws-maven-tomcat-practice.war ubuntu@YOUR_EC2_PUBLIC_IP:/home/ubuntu/
```
Then on EC2:
```bash
sudo cp /home/ubuntu/aws-maven-tomcat-practice.war /opt/tomcat/webapps/
```

Tomcat normally expands the WAR automatically. Check the Tomcat logs if the app does not start. Depending on how Tomcat was installed, its service name and installation path may differ.

## 3. Open the application
Visit:
`http://YOUR_EC2_PUBLIC_IP:8080/aws-maven-tomcat-practice/`

Click **Test Servlet** to call the Java servlet.

## 4. Verify deployment on EC2
```bash
ls -l /opt/tomcat/webapps/
```

If Tomcat is not managed by systemd or the app does not appear, check the installation's `logs/catalina.out` or service logs.

## Practice tasks
1. Change the welcome message in `index.jsp`, rebuild, and redeploy.
2. Change the servlet response in `HelloServlet.java`.
3. Rename the WAR using Maven's `<finalName>` and update the URL.
4. Check Tomcat logs after a deployment.
5. Remove the deployed WAR and its expanded application directory to practice undeployment.

Note: This project is for learning. Do not put secrets, passwords, or private keys in the project.
