


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<link href="<c:url value="/css/login.css"/>" rel="stylesheet" />

<h1 class="text-center text-danger">Đăng nhập</h1>

<body class="body1">
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
                <div class="card border-0 shadow rounded-3 my-5">
                    <div class="card-body p-4 p-sm-5">
                        <h5 class="card-title text-center mb-5 fw-light fs-5 text-center text-danger">ĐĂNG NHẬP</h5>
                        
                        <c:if test="${param.error != null}">
                            <div class="alert alert-danger">
                                Đã có lỗi xảy ra. Vui long quay lại sau!
                            </div>
                        </c:if>
                        <form method="post" action="${action}">
                            <div class="form-floating mb-3 form-group">
                                <input type="text" class="form-control" id="username" name="username"
                                    />
                                <label for="username">Username</label>
                            </div>
                            <div class="form-floating mb-3 form-group">
                                <input type="password" class="form-control" id="password" name="password"
                                   />
                                <label for="password">Password</label>
                            </div>

                            <div class="form-check mb-3 form-group">
                                <input class="form-check-input" type="checkbox" value="" id="rememberPasswordCheck">
                                <label class="form-check-label" for="rememberPasswordCheck">
                                    Remember password
                                </label>
                            </div>
                            <div class="d-grid padd form-group">
                                <button class="btn btn-primary btn-login text-uppercase fw-bold" type="submit" value="DANG NHAP">Đăng
                                    nhập
                                </button>
                            </div>
<!--                            <div class="d-grid form-group">
                                <button class="btn btn1-primary btn-login text-uppercase fw-bold" type="submit">
                                    <a href="<c:url value="/register" />" class="btn-reg">Đăng ký</a>
                                </button>
                            </div>-->

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>