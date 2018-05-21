<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<!-- Bootstrap core javaScript -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Include all compiled plugins (below), or include individual files as needed -->
<spring:url value="/js/bootstrap.min.js" var="BootstrapMinJsURL"/>
<script src="${BootstrapMinJsURL }"></script>