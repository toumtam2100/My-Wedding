<%--
  Created by IntelliJ IDEA.
  User: FPTSHOP
  Date: 11/3/2022
  Time: 12:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8" %>
<html>
<head>
    <jsp:include page="view/header.jsp"/>
    <link rel="shortcut icon" type="image/x-icon" href="../../../app-assets/images/ico/relationship.png">
    <title>Title</title>
</head>
<body>
<div class="container" style="margin-top: 50px;">
    <div class="row" style="border: 1px darkgrey solid; border-radius: 10px;width: 50%; margin: 0 auto; padding: 20px;" >
        <div class="col-sm-12">
            <h3>Update Account</h3>
            <form action="update" method="post">
                <div class="form-group mb-2">
                    <label for="">Username</label>
                    <input class="bg-secondary text-white font-weight-bolder form-control" type="text" name="name" value="${st.getUserName()}" readonly="true" />
                </div>
                <div class="form-group mb-2">
                    <label for="">Role</label>
                    <select name="role" >
                        <option ${st.getRole().equals("Admin")? "selected" : ""} value="Admin">Admin</option>
                        <option ${st.getRole().equals("User")? "selected" : ""} value="User">User</option>
                        <option ${st.getRole().equals("Staff")? "selected" : ""} value="Staff">Staff</option>
                    </select>
                </div>
                <div class="form-group mb-2">
                    <label for="">Full Name</label>
                    <input type="text" name="fullname" value="${st.getFullName()}" class="form-control">
                </div>
                <input type="hidden" name="id" value="${st.getId()}">
                <button type="submit" class="btn btn-primary">Update</button>
            </form>
            <div><p class="text-danger">${MESSAGE}</p></div>
        </div>
    </div>
</div>
</body>
</html>
