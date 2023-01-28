<%--
  Created by IntelliJ IDEA.
  User: shashank
  Date: 26/01/2023
  Time: 11:36 pm
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Customers</title>
    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/style.css"/>

    <link type="text/css"
          rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/>
</head>
<body>

<div id="wrapper">
    <div id="header">

        <h2>CRM-Customer Relationship Manager</h2>

    </div>


</div>


<div id="container">
    <h3>

        Save Customer
    </h3>
    <form:form action="saveCustomer" modelAttribute="customer" method="POST">

        <%--        need to associate this data with customer id--%>
        <form:hidden path="id"/>

        <table>

            <tbody>

            <tr>

                <td><label>First Name: </label></td>
                <td><form:input path="firstName"/></td>
            </tr>

            <tr>
                <td><label>Last Name: </label></td>
                <td><form:input path="lastName"/></td>
            </tr>


            <tr>
                <td><label>Email : </label></td>
                <td><form:input path="email"/></td>
            </tr>


            <tr>

                <td><label></label></td>
                <td><input type="submit" value="Save" class="save"/></td>
            </tr>
            </tbody>
        </table>


    </form:form>


    <p>

        <a href="${pageContext.request.contextPath}/customer/list">Back to List</a>
    </p>
</div>

</body>
</html>
