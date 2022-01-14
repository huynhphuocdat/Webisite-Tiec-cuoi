
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/css/style.css"/>" rel="stylesheet" />



<div class="container">
        <p class="font-gg-header"
            style="margin-top: 80px; text-align: center; font-size: 2.4rem; color: #F64130;">
            CHI TIẾT MÓN ĂN</p>
        <div class="row">

            <div class="col-md-6">
                
                <c:choose>
                        <c:when test="${monan.image.startsWith('http') == true}">
                            
                            <img  class="img-fluid" id="myImg" src="${monan.image}" alt="${monan.tenMonAn}">
                          
                        </c:when>
                        <c:when test="${monan.image.startsWith('http') == false}">
                            
                            <img class="img-fluid" style="heigh:300px; width:300px; margin-left: 213px;" id="myImg" src="<c:url value="/images/laptophp.jpg"/>" alt="${monan.tenMonAn}">
                      
                        </c:when>
                </c:choose>
                
            </div>
            <div class="col-md-6">
                <div>
                    <h1>Tên món: ${monan.tenMonAn}</h1>
                    <h4 style="color: #F64130;">Giá: ${monan.gia} VND</h4>
                    <p>Mô tả: ${monan.mota}</p>              
                    <input class="btn btn-primary1" type="button" onclick="addToCart(${monan.maMonAn}, '${monan.tenMonAn}', ${monan.gia})" value="Đặt hàng"/>
                </div>
            </div>
        </div>


    <div style="margin-top: 40px;">
        <h3>Đánh giá</h3>
           <form>
                    <div class="form-group">
                        <textarea class="form-control" id="commentId" placeholder="Nhập đánh giá của bạn..."></textarea>
                        <br>
                        <input type="button" onclick="addComment(${sanpham.productId})"
                               value="Gửi bình luận" class="btn btn-primary" />
                    </div>
            </form>
    </div>
                    
                               
    <div class="row">
        <div class="col-md-1" style="padding: 10px;">
            <img class="rounded-circle img-fluid" src="<c:url value="/images/sanhtiec.jpg" />" />
        </div>
        <div class="col-md-11 my-date">
            <p>${comment.content} a</p>
            <i>${comment.createdDate} s</i>
        </div>
    </div>
        

    <div id="commentArea">           
        <div class="container" >   
            <c:forEach items="${sanpham.binhluanCollection}" var="binhluan">
            <div class="row">
                <div class="col-md-2" style="padding: 10px">
                    <img class="rounded-circle img-fluid" style="heigh:300px; width:300px;" src="${sanpham.image}" />
                </div>
                <div class="col-md-10 my-date">
                    <p>${binhluan.content}</p>
                    <i>${binhluan.postDate}</i>
                </div>
            </div>  
            </c:forEach>    
        </div>
    </div>
</div>
                    
                    








