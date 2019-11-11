<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<!--spring:url value="/resources/images/header.png" var="banner"/ -->
<spring:url value="/resources/images/accenture6.jpg" var="banner"/>
<img src="${banner}"/>
 

<div class="navbar" style="width: 646px; font-family:'DIN Next W01 Regular'; margin-bottom:0px;">
    <div class="navbar-inner">
        <ul class="nav">
            <li style="width: 85px;"><a href="<spring:url value="/" htmlEscape="true" />"><i class="icon-home"></i>
                Home</a></li>
            <li style="width: 140px;"><a href="<spring:url value="/owners/find.html" htmlEscape="true" />"><i
                    class="icon-search"></i> Online Services</a></li>
            <li style="width: 115px;"><a href="<spring:url value="/vets.html" htmlEscape="true" />"><i
                    class="icon-th-list"></i> News </a></li>
            <li style="width: 150px;"><a href="<spring:url value="/oups.html" htmlEscape="true" />"
                                        title="trigger a RuntimeException to see how it is handled"><i
                    class="icon-warning-sign"></i> Error</a></li>
            <li style="width: 80px;"><a href="#" title="not available yet. Work in progress!!"><i
                    class=" icon-question-sign"></i> Help</a></li>
        </ul>
    </div>
</div>
	
