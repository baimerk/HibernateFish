<div class="container">
    <table class="table table-hover caption-top justify-content-center">
        <caption>Type of Rods</caption>
        <thead>
        <tr>
            <th class="text-center" scope="col">Type Rods</th>
            <th class="text-center" scope="col">Water Type</th>
            <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                <th class="text-center" scope="col">ACTION</th>
            </c:if>
        </tr>
        </thead>
        <c:forEach var="rods" items="${requestScope.listTypeRods}" varStatus="st">
            <tr>
                <td class="text-center align-middle">${rods.rods}</td>
                <td class="text-center align-middle">${rods.waterType}</td>
                <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                    <td class="text-center align-middle">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="edit?id=${user.id}" class="btn btn-primary" role="button">Edit</a>
                            <a href="delete?id=${user.id}" class="btn btn-secondary" role="button">Delete</a>
                        </div>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
    </table>
</div>
