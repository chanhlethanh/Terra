<%--
  Created by IntelliJ IDEA.
  User: zss
  Date: 6/1/24
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script
            src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>List Products</h2>
    <div class="rows">
        <div class="col-sm-9">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Amount</th>
                    <th></th>
                </tr>
                </thead>
                <tbody>

                <c:forEach var="item" items="${CART_ITEMS}">
                    <form action="/shopping-cart/update" method="post">
                        <input type="hidden" name="id" value="${item.productId}"/>
                        <tr>
                            <td>${item.productId }</td>
                            <td>${item.name }</td>
                            <td>${item.price}</td>
                            <td><input name="qty" value="${item.qty}"
                                       onblur="this.form.submit()" style="width: 50px;"></td>
                            <td>${item.price*item.qty}</td>
                            <td><a class="btn btn-primary btn-sm"
                                   href="/shopping-cart/del/${item.productId}">Remove</a></td>
                        </tr>
                    </form>
                </c:forEach>


                </tbody>
            </table>
            <p>Tong Tien:${TOTAL}</p>
            <hr/>
            <a class="btn btn-primary btn-sm" href="/shopping-cart/clear">Clear
                Cart</a> <a class="btn btn-primary btn-sm" href="/product/views">Add
            more</a>
        </div>
    </div>

</div>
</body>
</html>
