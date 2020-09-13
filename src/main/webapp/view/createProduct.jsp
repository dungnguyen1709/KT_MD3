<%--
  Created by IntelliJ IDEA.
  User: satma
  Date: 9/9/2020
  Time: 8:52 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Add New Product</title>
</head>
<body>
<div align="center">
    <caption>
        <a href="/main?action=abc"><h3>Quay về trang chủ</h3></a>
    </caption>
</div>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Thêm mới sản phẩm</h2>
            </caption>

            <tr>
                <th>Tên sản phẩm:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Giá sản phẩm:</th>
                <td>
                    <input type="text" name="price" id="price" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Số lượng:</th>
                <td>
                    <input type="text" name="quantity" id="quantity" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Màu sắc:</th>
                <td>
                    <input type="text" name="color" id="color" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Mô tả:</th>
                <td>
                    <input type="text" name="description" id="description" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Danh mục:</th>
                <td>
                    <select name="cid" id="cid">
                        <c:forEach var="category" items="${categoryList}">
                            <option value="${category.cid}"><c:out value="${category.categoryName}"/></option>
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