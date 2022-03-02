<nav class="navbar navbar-default navbar-dark bg-dark navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath}/base/" class="navbar-brand">
                <img src="https://lh3.googleusercontent.com/IfOZkmxzhoGXy0K6BSBV-SBmOOqqP_kItsk-kqiZhMIlnb2NT8V5pE1KmGL1JlktQAgtaGkETyFmJP3i8lXC73OAY3Uo0Afi4YUOcpYgloDnRQdV1KOv7q1KwS0UrSAz3smw8022q4NyN7e8eVBIEzZH0DGJuiyJfuk1m8OWhLBNd_IlSGGD6IkYGqn8I4G7drW2Zfhy2x1SPTpPvLr2oHcjl9zsYcqACfwfVpuF_-RJUmUZvNNAjy1T6PsPTPMpjjWPN-VodXds0mQ_8HBOYl4A9SKLAANvQejdfZs6aAWtrxA7_atn6Tb06J3gs5V358TiMq7PZJZdEq3xteQaPxtCaYc-t_fNKu-6-co8z-4AAsbPd9jMnAKLAmPt4Yss9aZUsUR0jBS7RSCBQPSoJPWkrVA0c_6kS9em7mvCyCAyX0M5fGP01fGBk_xt-7shNsFk1TKGzwDlWdW1ePO8Vc70o0k0Xhrr5s_e12MfU7Eb28-24otONxquL46oViy4ckYv0sZ8fUXx_Qe2CTvuJGdnw82sNT64PJJExkM-wbEdsWt8BW-Mhm7ZapH9NbMO8iEhtUFIY_rMq1EFgvyBBcXCl8ZpV1qHY-DCBqK5eUckz6XDOi0xWVRILqVHzUd2sCYZQP8Q3Oiqgqeu5a21ZE-VcCzZ6-Hh2L4NSH9h2_VzACSBA1ilBJ77poPDFMlDtiI4uVyxWCpkek4mOXnjkONT=w508-h202-no?authuser=0" height="35"
                     alt="CoolBrand">
            </a>
            <c:if test="${sessionScope.user !=null}">
                <a>Hello ${sessionScope.user.name}</a>
                <a>You access ${sessionScope.user.role}</a>
            </c:if>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav navbar-right">
                <c:if test="${sessionScope.user !=null}">
                    <li><a href="${pageContext.request.contextPath}/base/logoutAction">LOGOUT</a></li>
                </c:if>
                <c:if test="${sessionScope.user ==null}">
                    <li><a href="${pageContext.request.contextPath}/base/login">LOGIN</a></li>
                </c:if>
                <li class="dropdown"><a class="dropdown" data-toggle="dropdown" href="#">CATALOG
                    <span class="carret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="${pageContext.request.contextPath}/list-of-rods/">Fishing Rods</a></li>
                        <li><a href="${pageContext.request.contextPath}/list-of-reels/">Fishing Reels</a></li>
                        <li><a href="#">Good assemblies experience</a></li>
                        <c:if test="${sessionScope.user.role == 'ADMIN' or sessionScope.user.role =='USER'}">
                            <li><a href="${pageContext.request.contextPath}/base/cabinet">My Cabinet</a></li>
                        </c:if>
                    </ul>
                </li>
                <li><a href="#band">SERVICE</a></li>
                <li><a href="#tour">TECHNOLOGIES</a></li>
                <li><a href="#contact">CONTACT</a></li>
                <c:if test="${sessionScope.user.role == 'ADMIN' or sessionScope.user.role =='SPECIALIST'}">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
                            <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="${pageContext.request.contextPath}/list-of-rods/list-rods">Rods management</a></li>
                            <li><a href="${pageContext.request.contextPath}/list-of-reels/list-reels">Reels management</a></li>
                            <li><a href="${pageContext.request.contextPath}/base/users">Users management</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>