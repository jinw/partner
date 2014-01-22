<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<spring:url value="/indigo/agents" var="formUrl"/>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title></title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">

    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap.min.css"/>"/>
    <style>
        body {
            padding-top: 10px;
            padding-bottom: 20px;
        }
    </style>
    <link rel="stylesheet" href="<spring:url value="/static/css/bootstrap-theme.min.css"/>"/>
    <link rel="stylesheet" href="<spring:url value="/static/css/main.css"/>"/>

    <script src="<spring:url value="/static/js/vendor/modernizr-2.6.2-respond-1.1.0.min.js"/>"></script>
</head>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->
<div class="navbar  ">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#"><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" /></a>
        </div>

        <div class="navbar-header navbar-right" style="padding-top:10px">
            <form class="navbar-form navbar-right" action="${formUrl}" method="get" role="form">
                <span style="font-size:18px">Search</span>
                <div class="form-group">
                    <select class="form-control" name="mode">
                        <option value="2" selected>Air</option>
                        <option value="3">Sea</option>
                        <%--<option value="all">All</option>--%>
                    </select>
                </div>
                <div class="form-group">
                    <input type="text" placeholder="name" class="form-control" name="addr">
                </div>
                <div class="form-group">
                    <select class="form-control" name="country">
                        <option value="250">France</option>
                        <option value="276" selected>Germany</option>
                    </select>
                </div>
                <button type="submit" class="btn btn-primary">Search</button>
            </form>
        </div>

    </div>
</div>

<div class="visible-print pull-right clearfix" ><img src="<spring:url value="/static/img/logo_delmar.gif"/>" alt="Delmar International Inc" height="42" border="0" width="157" />

</div>

<c:if test="${fn:length(agents) == 0}">
  <div class="container">
    <p>A default Delmar Agent is not currently listed, please contact us at info@delmarcargo.com, Thank you.</p>
  </div>
</c:if>

<c:forEach var="row" items="${agents}" varStatus="status">
<div class="container">
    <h4>Delmar agent in <c:out value="${pageScope.row.cityName}"/>, <c:out value="${pageScope.row.countryName}"/></h4>
    <div class="row">
        <div class="col-md-6">
          <address>
            <c:out value="${row.addressName}"/><br/>
            <c:out value="${row.address1}"/><br/>
            <c:out value="${row.address2}"/><br/>
            <c:out value="${row.cityName}"/><br/>
            <c:out value="${row.provStateName}"/><br/>
            <c:out value="${row.zipCode}"/><br/>
            <c:out value="${row.countryName}"/><br/>
            Tel.: <c:out value="${row.tel}"/><br/>
            Fax: <c:out value="${row.fax}"/><br/>
          </address>
        </div>
        <div class="col-md-6">
          <p><b>Contacts</b></p>
            <p>
              <c:forEach var="contact" items="${row.contacts}">
                Name: <c:out value="${contact.name}"/><br/>
                Email: <a href="mailto:<c:out value="${contact.email}"/>"><c:out value="${contact.email}"/></a><br/>
              </c:forEach>
            </p>
        </div>
    </div>
</div>
</c:forEach>

<div class="container">
    <footer>
        <p>&copy; Delmar International Inc, 2014</p>
    </footer>
</div> <!-- /container -->
<script>window.jQuery || document.write('<script src="<spring:url value="/static/js/vendor/jquery-1.10.1.min.js"/>"><\/script>')</script>

<script src="<spring:url value="/static/js/vendor/bootstrap.min.js"/>"></script>
<script src="<spring:url value="/static/js/plugins.js"/>"></script>
<script src="<spring:url value="/static/js/main.js"/>"></script>

</body>
</html>
