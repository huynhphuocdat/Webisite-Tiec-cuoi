

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<div class="row" style="margin-top: 80px">
    <p class="font-gg-header"
            style="text-align: center; font-size: 2.5rem; color: #F64130;">
            CÁC DỊCH VỤ</p>

    <table class="table">
        <tr>
            <th>Mã</th>
            <th>Tên dịch vu</th>
            <th>Giá</th>
<!--            <th>Số lượng</th>-->
        </tr>
        <c:forEach items="${dichvu}" var="d">
        <tr>
            <td>${d.maDV}</td>
            <td>${d.tenDV}</td>
            <td>${d.gia} VND</td>
<!--            <td>
                <div class="form-group">
                    <input type="number" 
                           onblur="updateCart(this, ${c.productId})"
                           value="${c.quantity}" 
                           class="form-control" />
                </div>
            </td>-->
            <td>
                <input class="btn btn-primary1" type="button" onclick="addToCart(${d.maDV}, '${d.tenDV}', ${d.gia})"" value="Đặt hàng"/>
            </td>
        </tr>
        </c:forEach>
    </table>
    <br><br>
</div>


<ul class="pagination" style="justify-content: center;">
    <c:forEach begin="1" end="${Math.ceil(productCounter/9)}" var="page">
        <li class="page-item"><a class="page-link" href="<c:url value="/dichvu" />?page=${page}">${page}</a></li>
    </c:forEach>
</ul>
