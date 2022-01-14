

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<p class="font-gg-header"
            style="margin-top: 80px; text-align: center; font-size: 2.5rem; color: #F64130;">
            MÓN ĂN</p>


<ul class="nav nav-pills nav-justified" style="margin-bottom: 50px">
    <c:forEach var="l" items="${loaimonan}">
    <li class="nav-item" style="margin-right: 10px;">
        <c:url value="/monan" var="catPath">
            <c:param name="CateId" value="${l.idLoaiMonAn}"></c:param>
        </c:url>
        <a class="nav-link active" style="background-color: #0D0E0F;" href="${catPath}">${l.tenLoaiMonAn}</a>
    </li>
    </c:forEach>
</ul>


<div class="row">
    <c:forEach var="m" items="${monan}">
            <div class="col-md-4 col-xs-12" style="margin-bottom: 10px;">
                <div class="card zoom"
                    style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; ">           
                    <a href="<c:url value="/monan/${m.maMonAn}" />">
                        <c:choose>
                        <c:when test="${m.image.startsWith('http') == true}">
                                     
                                    <img class="card-img-top" src="${m.image}" alt="Card image"
                            style="width:100%; height: 276px;">
                                   
                                </c:when>
                                <c:when test="${p.image.startsWith('http') == false}">

                                       <img class="card-img-top" src="images/sanhtiec.jpg" alt="Card image"
                            style="width:100%; height: 276px;">
                                  
                                </c:when>
                        </c:choose>
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">${m.tenMonAn}</h4>
                        <p class="card-text ">${m.gia} VND</p>
                        <a href="#" class="btn btn-primary1" onclick="addToCart(${m.maMonAn}, '${m.tenMonAn}', ${m.gia})">Đặt hàng</a>
                    </div>
                </div>
            </div>
    </c:forEach>
</div>

<ul class="pagination" style="justify-content: center;">
    <c:forEach begin="1" end="${Math.ceil(productCounter/14)}" var="page">
        <li class="page-item"><a class="page-link" href="<c:url value="/monan" />?page=${page}">${page}</a></li>
    </c:forEach>
</ul>
