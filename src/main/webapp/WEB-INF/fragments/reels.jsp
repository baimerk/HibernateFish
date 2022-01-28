<div class="container">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Type of Reels</caption>
        <thead class="table-dark">
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">modelName</th>
            <th class="text-center" scope="col">bodyMaterial</th>
            <th class="text-center" scope="col">bearings</th>
            <th class="text-center" scope="col">familyType</th>
            <th class="text-center" scope="col">handle</th>
            <th class="text-center" scope="col">spoolMaterial</th>
            <th class="text-center" scope="col">models</th>
            <th class="text-center" scope="col">waterType</th>
            <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                <th class="text-center" scope="col">ACTION</th>
            </c:if>
        </tr>
        </thead>
        <c:forEach var="reels" items="${requestScope.listReels}" varStatus="st">
            <tr>
                <th class="text-center align-middle" scope="row">${st.index}</th>
                <td class="text-center align-middle">${reels.modelName}</td>
                <td class="text-center align-middle">${reels.bodyMaterial}</td>
                <td class="text-center align-middle">${reels.bearings}</td>
                <td class="text-center align-middle">${reels.familyType}</td>
                <td class="text-center align-middle">${reels.handle}</td>
                <td class="text-center align-middle">${reels.spoolMaterial}</td>
                <td class="text-center align-middle">${reels.models}</td>
                <td class="text-center align-middle">${reels.waterType}</td>
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