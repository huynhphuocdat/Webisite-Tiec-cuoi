

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>





<div class="row" style="margin-top: 100px">
    <p class="font-gg-header"
            style="margin-bottom: 50px; text-align: center; font-size: 2.5rem; color: #F64130;">
            SẢNH TIỆC</p>
    <c:forEach var="s" items="${sanhtiec}">
            <div class="col-md-4 col-xs-12" style="margin-bottom: 10px;">
                <div class="card zoom"
                    style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); text-align: center; ">           
                    <a href="<c:url value="/sanhtiec/${s.masanhtiec}" />">
                        <c:choose>
                        <c:when test="${s.image.startsWith('http') == true}">
                                    <img class="card-img-top" src="${s.image}" alt="Card image"
                            style="width:100%; height: 276px;">
                                   
                                </c:when>
                                <c:when test="${s.image.startsWith('http') == false}">

                                       <img class="card-img-top" src="images/sanhtiec.jpg" alt="Card image"
                            style="width:100%; height: 276px;">
                                  
                                </c:when>
                        </c:choose>
                    </a>
                    <div class="card-body">
                        <h4 class="card-title">${s.tenSanh}</h4>
                        <p class="card-text">${s.giaTienToi} VND</p>
                    </div>
                </div>
            </div>
    </c:forEach>
</div>


