<div class="container">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Type of Reels</caption>
        <thead class="table-dark">
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">Size</th>
            <th class="text-center" scope="col">nylonLine</th>
            <th class="text-center" scope="col">ballBearings</th>
            <th class="text-center" scope="col">gearRatio</th>
            <th class="text-center" scope="col">weight</th>
            <th class="text-center" scope="col">spoolMaterial</th>
            <th class="text-center" scope="col">lineRetrieve</th>
            <th class="text-center" scope="col">Model</th>
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
                <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                    <td class="text-center align-middle">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="#" class="btn btn-primary" role="button">Edit</a>
                            <a href="#" class="btn btn-secondary" role="button">Delete</a>
                        </div>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</div>