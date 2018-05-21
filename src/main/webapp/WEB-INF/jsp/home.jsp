
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html lang="en">
<%@ include file = "header.jsp" %>
<%@ include file = "footer.jsp" %>
<%@ include file = "nav.jsp" %>

 
<body>

	<div class="container" style="padding-top: 60px;">
		<p>The val of msg is :${msg }</p>
		<h1>Add new Customer</h1>
		<spring:url value="save" var="saveURL"></spring:url>
		<form:form class="form-horizontal" modelAttribute="customer"
			method="post" action="${saveURL}">
			<form:hidden path="id" />

			<div class="form-group">
				<label class="control-label col-sm-2">First Name</label>
				<div class="col-sm-4">
					<form:input path="firstName" class="form-control" value="${edit_cust.firstName}" />
					
				</div>
			</div>


			<div class="form-group">
				<label class="control-label col-sm-2">Last Name</label>
				<div class="col-sm-4">
					<form:input path="lastName" class="form-control" value="${edit_cust.lastName}"/>
				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2">Gender </label>
				<div class="col-sm-10">
					<label class="radio-inline"> <form:radiobutton
							path="gender" value="MALE"   />MALE
					</label> <label class="radio-inline"> <form:radiobutton
							path="gender" value="FEMALE"  />FEMALE
					</label>

				</div>
			</div>

			<div class="form-group">
				<label class="control-label col-sm-2">Address </label>
				<div class="col-sm-10">
					<form:textarea path="address" class="form-control" rows="3" value="${edit_cust.address}" />
				</div>
			</div>

			<div class="form-group">
				<div class="col-md-offset-2 col-md-10">
					<input type="submit" value="Submit" class="btn btn-default" />
				</div>
			</div>

		</form:form>

	</div>
</body>
</html>