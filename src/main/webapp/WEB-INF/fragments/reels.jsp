<div class="container1">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Type of Reels</caption>
        <thead class="table-dark">
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">Size</th>
            <th class="text-center" scope="col">Nylon Line</th>
            <th class="text-center" scope="col">Ball Bearings</th>
            <th class="text-center" scope="col">Gear Ratio</th>
            <th class="text-center" scope="col">Weight</th>
            <th class="text-center" scope="col">Spool Material</th>
            <th class="text-center" scope="col">Line Retrieve</th>
            <th class="text-center" scope="col">Model</th>
            <th class="text-center" scope="col">Price</th>
            <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                <th class="text-center" scope="col">ACTION</th>
            </c:if>
        </tr>
        </thead>
        <c:forEach var="reels" items="${requestScope.listReels}" varStatus="st">
            <tr>
                <th class="text-center align-middle" scope="row">${st.index}</th>
                <td class="text-center align-middle">${reels.size}</td>
                <td class="text-center align-middle">${reels.nylonLine}</td>
                <td class="text-center align-middle">${reels.ballBearings}</td>
                <td class="text-center align-middle">${reels.gearRatio}</td>
                <td class="text-center align-middle">${reels.weight}</td>
                <td class="text-center align-middle">${reels.spoolMaterial}</td>
                <td class="text-center align-middle">${reels.lineRetrieve}</td>
                <td class="text-center align-middle">${reels.model}</td>
                <td class="text-center align-middle">${reels.price}</td>
                <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                    <td class="text-center align-middle">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="${pageContext.request.contextPath}/list-of-reels/edit-reel?id=${reels.id}" class="btn btn-primary2" role="button">Edit</a>
                            <a href="#" class="btn btn-secondary2" role="button">Delete</a>
                        </div>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</div>