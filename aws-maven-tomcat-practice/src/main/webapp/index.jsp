<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AWS Maven Tomcat Practice</title>
    <style>
        body { font-family: Arial, sans-serif; max-width: 760px; margin: 60px auto; padding: 0 20px; line-height: 1.6; color: #172033; }
        .card { border: 1px solid #d7deea; border-radius: 14px; padding: 28px; }
        .tag { display: inline-block; background: #e8f2ff; padding: 5px 10px; border-radius: 20px; font-size: 13px; }
        a { display: inline-block; background: #165dba; color: white; padding: 10px 16px; border-radius: 8px; text-decoration: none; }
    </style>
</head>
<body>
<div class="card">
    <span class="tag">Deployment Practice</span>
    <h1>Hello, AWS + Maven + Tomcat!</h1>
    <p>If this page opens from your EC2 public IP, the web application has been deployed.</p>
    <ul>
        <li>Build tool: Maven</li>
        <li>Packaging: WAR</li>
        <li>Application server: Apache Tomcat 10.1</li>
    </ul>
    <p><a href="hello">Test Java Servlet</a></p>
</div>
</body>
</html>
