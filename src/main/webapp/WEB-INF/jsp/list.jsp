     <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
   
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %> 
   
   <!DOCTYPE html>
<html lang="en">
<%@ include file = "header.jsp" %>
<%@ include file = "footer.jsp" %>
<%@ include file = "nav.jsp" %>


<body>

<div class="container">
<h1>Customer List</h1>
<div class="table-responsive">
<table class="table table-bordered table-striped">
<thead>
      <tr>
        <th>#Id</th>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Gender</th>
        <th>Address</th>
        <th colspan="2">Action</th>
      </tr>
    </thead>
    <tbody>
    <c:forEach items="${listCustomer}" var="customer">
    <tr>
        <td>${customer.id}</td>
        <td>${customer.firstName}</td>
        <td>${customer.lastName}</td>
        <td>${customer.gender}</td>
        <td>${customer.address}</td>
        <td> 
        <spring:url value="update?id=${customer.id}" var="updateURL"/>
        <button type="button" class="btn btn-link" onclick="location.href='${updateURL}'">Update</button>
        </td>
        
         <td> 
         <spring:url value="delete?id=${customer.id}" var="deleteURL"/>
         <button type="button" class="btn btn-danger" onclick="location.href='${deleteURL}'">Delete</button>
         
          </td>
        </tr>
    </c:forEach>
    </tbody>
    

</table>


</div>
</div>
</body>
</html>