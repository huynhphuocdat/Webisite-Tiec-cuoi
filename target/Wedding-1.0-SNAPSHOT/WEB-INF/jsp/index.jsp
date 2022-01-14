

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/css/style.css"/>" rel="stylesheet" />




        <p class="font-gg-header"
            style="margin-top: 92px; margin-bottom: 50px; text-align: center; font-size: 2.5rem; color: #F64130;">
            WELCOME TO JAVA WEDDING</p>
        <c:if test="${currentUser != null}">
            ${currentUser.email} - ${currentUser.username}
        </c:if>
        <div class="main">
            <div class="row" style="background-color: #e2d9da;">
                <div class="col-md-6">
                    <a href="<c:url value="/sanhtiec" />">
                        <button type="button" class="btn btn-info1" style="margin-bottom: 1rem;">Sảnh tiệc</button>
                    </a>

                    <p class="font-gg" style="font-size: 18px;">Sảnh tiệc tại Java Wedding được thiết kế theo lối kiến
                        trúc châu Âu
                        đẳng cấp, tất cả đều có trần
                        cao
                        và thoáng đãng, đặc biệt không có cột che chắn, nhằm tạo nên một không gian yến tiệc rộng rãi và
                        sang trọng. Ngoài ra, hầu hết sảnh tiệc ở đây được trang bị đầy đủ hệ thống âm thanh, ánh sáng
                        hiện
                        đại, được bố trí một cách thông minh, độc đáo, làm cho buổi tiệc thêm ấn tượng và lộng lẫy, thể
                        hiện
                        được phong cách riêng của bạn.</p>
                </div>
                <div class="col-md-6">
                    <a href="<c:url value="/sanhtiec" />">
                        <img src="images/sanhtiec.jpg" style="width: 648px;">
                    </a>
                </div>



                <div class="line" style="margin-bottom: 20px; margin-top: 20px;"></div>



                <div class="col-md-6">
                    <a href="<c:url value="/monan" />"> 
                        <img src="images/thucdon.jpg" style="width: 648px;">
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="<c:url value="/monan" />">
                        <button type="button" class="btn btn-info1" style="margin-bottom: 1rem; margin-left: 36rem;">Món
                            ăn</button>
                    </a>

                    <p class="font-gg" style="font-size: 18px;" style="font-size: medium;">Thực đơn tiệc cưới tại Java
                        Wedding là sự kết hợp của tinh hoa ẩm
                        thực dưới bàn tay nghệ thuật của những đầu bếp tài ba với hơn 20 năm kinh nghiệm trong nghề. Với
                        Menu tiệc cưới đa dạng, hấp dẫn và phong phú với hơn 200 món ăn tiệc cưới từ đơn giản đến phức
                        tạp, từ những món ăn truyền thống tới các món đặc biệt của các nền ẩm thực khác nhau trên thế
                        giới, từ tiệc buffet cho đến bàn tròn, sẽ để lại những dư vị ngọt ngào và cảm giác an lành cho
                        những vị khách đến tham dự bữa tiệc.</p>
                </div>


                <div class="line1" style="margin-bottom: 20px; margin-top: 20px;"></div>


                <div class="col-md-6">
                    <a href="<c:url value="/dichvu" />">
                        <button type="button" class="btn btn-info1" style="margin-bottom: 1rem;">Dịch vụ</button>
                    </a>

                    <p class="font-gg" style="font-size: 18px;" style="font-size: medium;">Những tin tức, sự kiện, hoạt
                        động và xu hướng cưới trong và ngoài nước
                        luôn được Diamond Place cập nhật liên tục cung cấp những thông tin bổ ích giúp các bạn có những
                        lựa chọn phù hợp. Ngoài ra, những cơ hội nghề nghiệp của trung tâm hội nghị luôn được cập nhật
                        dành cho những ai theo đuổi ước mơ ngành nhà hàng. Chúng tôi sẽ mang đến những trải nghiệm thú
                        vị qua những thông tin hữu ích và lý thú.</p>
                </div>
                <div class="col-md-6">
                    <a href="#">
                        <img src="images/dichvu1.png " style="width: 648px;">
                    </a>
                </div>

            </div>
        </div>







