




<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<p class="font-gg-header"
            style="margin-top: 70px; text-align: center; font-size: 2.5rem; color: #F64130;">
            GIỎ HÀNG</p>

<c:if test="${giohang == null}">
    <h3 class="text-danger" style="text-align: center">Không có sản phẩm trong giỏ</h3>
</c:if>
    
<c:if test="${giohang != null}">
    <table class="table">
        <tr>
            <th>Mã</th>
            <th>Tên</th>
            <th>Đơn giá</th>
            <th>Số lượng</th>
            <th></th>
        </tr>
        <c:forEach items="${giohang}" var="g">
        <tr>
            <td>${g.productId}</td>
            <td>${g.productName}</td>
            <td>${g.price} VND</td>
            <td>
                <div class="form-group">
                    <input type="number" onblur="updateCart(this, ${g.productId})" value="${g.quantity}" class="form-control" />
                </div>
            </td>
            <td>
                <input type="button" value="Xóa" onclick="deleteCart(${g.productId})" class="btn btn-danger" />
            </td>
        </tr>
        </c:forEach>
    </table>
    
    <div>
        <h3 style="color: mediumblue">Tổng tiền hóa đơn: <span id="amountCart">${cartStats.amount}</span> VND</h3>
    </div>
    
    <input type="button" onclick="pay()" value="Thanh toán" class="btn btn-danger" />
    <br><br>
</c:if>
