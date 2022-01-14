

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link href="<c:url value="/css/style.css"/>" rel="stylesheet" />


<div class="header">
            <nav class="navbar fixed-top navbar-expand-lg navbar-dark" style="background-color: #0D0E0F;">
                <div class="container-fluid">
                    <a class="navbar-brand font-gg-home" style="color: #F64130; font-size: 27px;" href="<c:url value="/" />">
                        JAVA<span>WEDDING</span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                        aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">
                                    Danh mục
                                </a>
                                <ul class="dropdown-menu dropdown-menu-dark"
                                    aria-labelledby="navbarDarkDropdownMenuLink">
                                    <li><a class="dropdown-item" href="<c:url value="/sanhtiec" />">Sảnh tiệc</a></li>
                                    <li><a class="dropdown-item" href="<c:url value="/monan" />">Món ăn</a></li>
                                    <li><a class="dropdown-item" href="<c:url value="/dichvu" />">Dịch vụ</a></li>
                                </ul>
                            </li>
                            
                            
                            <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/login" />">
                                    <i class="far fa-user"></i>
                                    Đăng nhập
                                </a>
                            </li>
                            
                            <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/register" />">
                                    <i class="far fa-check"></i>
                                    Đăng ký
                                </a>
                            </li>
                       
                            </c:if>
                            <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <li class="nav-item">
                                <a class="nav-link text-danger" href="<c:url value="/" />">
                                    <c:if test="${currentUser.avatar != null}">
                                        <img style="width: 30px;" src="${currentUser.avatar}" class="rounded-circle"/>
                                    </c:if>
                                    <c:if test="${currentUser.avatar == null}">
                                        <i class="far fa-user"></i>
                                    </c:if>
                                    
                                    ${pageContext.request.userPrincipal.name}
                                </a>
                                </li>
                                
                                <li class="nav-item">
                                <a class="nav-link" href="<c:url value="/logout" />">
<!--                                    <i class="far fa-user"></i>-->
                                    Đăng xuất
                                </a>
                            </li>
                            </c:if>

                            
                            <li class="nav-item">
                                <a class="nav-link text-success" style="font-size: 15px;" href="<c:url value="/giohang" />">
                                    <i class="fas fa-shopping-cart"></i>
                                    <div class="badge badge-danger" style="background-color: #F64130;" id="cartCounter">${cartCounter}</div>
                                </a>
                            </li>
                        </ul>
                        <form class="d-flex" action="<c:url value="/monan" />">
                            <input class="form-control me-2" name="kw" type="text" placeholder="Tìm kiếm..." aria-label="Search">
                            <button class="btn btn-outline-success1" type="submit">Search</button>
                        </form>

                    </div>
                </div>
            </nav>
        </div>

