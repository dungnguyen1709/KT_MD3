<%--
  Created by IntelliJ IDEA.
  User: satma
  Date: 9/9/2020
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Product Management Application</title>
</head>
<body>
<div style="text-align: center;">
    <h1>Quản lý sản phẩm</h1>
    <h2>
        <a href="main?action=view">Danh sách sản phẩm</a>
    </h2>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>
                    Sửa đổi thông tin sản phẩm:
                </h2>
            </caption>
            <c:if test="${product != null}">
                <input type="hidden" name="id" value="<c:out value='${product.id}' />"/>
            </c:if>
            <tr>
                <th>Tên sản phẩm:</th>
                <td>
                    <input type="text" name="name" size="45"
                           value="${product.name}"/>
                </td>
            </tr>
            <tr>
                <th>Giá sản phẩm:</th>
                <td>
                    <input type="text" name="price" size="45"
                           value="${product.price}"/>
                </td>
            </tr>
            <tr>
                <th>Số lượng:</th>
                <td>
                    <input type="text" name="quantity" size="15"
                           value="${product.quantity}"/>
                </td>
            </tr>
            <tr>
                <th>Màu sắc:</th>
                <td>
                    <input type="text" name="category" size="15"
                           value="${product.color}"/>
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="description" size="15"
                           value="${product.description}"/>
                </td>
            </tr>
            <tr>
                <th>Danh mục:</th>
                <td>
                    <select name="cid" id="cid">
                        <c:forEach var="category" items="${categoryList}">
                            <option value="${category.cid}"
                                    <c:if test="${category.cid == product.cid}"> selected  </c:if>>
                                <c:out value="${category.categoryName}"/>
                            </option>
                        </c:forEach>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>