<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>


<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">


<title>Customer</title>
<!-- Bootstrap core css -->

<spring:url value="/css/bootstrap.min.css"
	var="bootstrapMinURL" />
<spring:url value="/css/mytemplate.css" var="mytemplateURL" />

<link href="${bootstrapMinURL }" rel="stylesheet">
<link href="${mytemplateURL }" rel="stylesheet">
</head>