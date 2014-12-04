<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">


    <title>netcat</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/netcat.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="container">

      <form class="form-netcat" role="form" action="netcat" method="post">
        <h2 class="form-netcat-heading">netcat</h2>
        <p><kbd>$ nc -vz -w 10 &lt;host&gt; &lt;port&gt;</kbd></p>
        <label for="inputHost" class="sr-only">Host</label>
        <input type="host" id="inputHost" class="form-control" placeholder="Host" required autofocus>
        <label for="inputPort" class="sr-only">Port</label>
        <input type="port" id="inputPort" class="form-control" placeholder="Port" required>

        <button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
      </form>

    </div>


<c:if test="${!empty ncOutput}">
  <div class="container">
    <div class="output-netcat">
       <h2>output</h2>
       <pre>
<c:out value="${ncOutput}"/>
       </pre>
    </div>
  </div>
</c:if>

  </body>
</html>
