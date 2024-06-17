<%--
  Created by IntelliJ IDEA.
  User: zss
  Date: 6/1/24
  Time: 10:51 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!-- <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> -->
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
    <title>JSP Page</title>
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
                    <th><a href="views?field=id">ID</a></th>
                    <th><a href="views?field=productName">Product name</a></th>
                    <th><a href="views?field=price">Price</a></th>
                    <th><a href="views?field=quantity">Quantity</a></th>
                    <th><a href="views?field=available">Available</a></th>
                </tr>
                </thead>
                <tbody>
                <c:forEach items="${LIST_PRODUCT.content}" var="p">
                    <tr>
                        <td align="center" width="120"><img
                                src="https://dienmaythienhoa.vn/static/images/4.%20hinh%20sp/3.%20Hinh%20SP%202/laptop-asus-s330fn-ey037t-1.png"
                                width="100" height="100"/></td>
                        <td>${p.id}</td>
                        <td>${p.product_name}</td>
                        <td>${p.price}</td>
                        <td>${p.quantity}</td>
                        <td><a class="btn btn-primary btn-sm" href="/shopping-cart/add/${p.id}">BUY NOW</a>
                        <td><a class="btn btn-primary btn-sm" href="/shopping-cart/add/${p.id}">ADD CART</a>
                        </td>
                    </tr>
                </c:forEach>

                </tbody>
            </table>
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                    <li class="page-item"><a class="page-link" href="/product/views/page?p=0">First</a></li>
                    <li class="page-item"><a class="page-link" href="/product/views/page?p=${LIST_PRODUCT.number - 1}">Previous</a>
                    </li>
                    <li class="page-item"><a class="page-link" href="/product/views/page?p=${LIST_PRODUCT.number + 1}">Next</a>
                    </li>
                    <li class="page-item"><a class="page-link"
                                             href="/product/views/page?p=${LIST_PRODUCT.totalPages - 1}">Last</a></li>
                </ul>
            </nav>
            <ul>
                <li>So thuc the hien tai: ${LIST_PRODUCT.numberOfElements}</li>
                <li>Trang so: ${LIST_PRODUCT.number}</li>
                <li>Kich thuoc trang: ${LIST_PRODUCT.size}</li>
                <li>Tong so thuc the: ${LIST_PRODUCT.totalElements}</li>
                <li>Tong so trang: ${LIST_PRODUCT.totalPages}</li>
            </ul>
        </div>
    </div>

</div>
</body>
</html>
