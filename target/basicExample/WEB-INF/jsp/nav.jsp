  <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
  <spring:url value="/customers/" var="homeURL"/>
  <spring:url value="/customers/save" var="addURL"/>
  <spring:url value="/customers/list" var="listURL"/>
  
  <nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false">
				<span class="sr-only">Toggle Navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${homeURL }">Your Project</a>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
			<li class="active"><a href="${homeURL}">Home</a></li>
			<li class="dropdown active">
			<a class="dropdown-toggle"
				data-toggle="dropdown" href="#" role = "button" aria-haspopup="true" aria-expanded="false">Customers <span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li class="active"><a href="${addURL}">Add New Customer</a></li>
					<li class="active"><a href="${listURL}">Customer List</a></li>
				</ul></li>
				
			<li><a href="#settings">Settings</a></li>
			<li><a href="#about">About</a></li>
		</ul>
		</div>
	</div>
</nav>