<div class="container-fluid">
    <table class="table table-striped">
        <caption>Characters of rods</caption>
        <thead class="table-success">
        <tr>
            <th class="text-center" scope="col">#</th>
            <th class="text-center" scope="col">Model</th>
            <th class="text-center" scope="col">Length,m</th>
            <th class="text-center" scope="col">Power</th>
            <th class="text-center" scope="col">Lure test,g</th>
            <th class="text-center" scope="col">Line test</th>
            <th class="text-center" scope="col">Action</th>
            <th class="text-center" scope="col">Weight,g</th>
            <th class="text-center" scope="col">Section</th>
            <th class="text-center" scope="col">Transp.length,sm</th>
            <th class="text-center" scope="col">Model Type</th>
            <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                <th class="text-center" scope="col">ACTION</th>
            </c:if>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="rodsCharacters" items="${requestScope.listRods}" varStatus="st">
            <tr>
                <th class="text-center align-middle" scope="row">${st.index}</th>
                <td class="text-center align-middle">${rodsCharacters.model}</td>
                <td class="text-center align-middle">${rodsCharacters.length}</td>
                <td class="text-center align-middle">${rodsCharacters.power}</td>
                <td class="text-center align-middle">${rodsCharacters.lureTest}</td>
                <td class="text-center align-middle">${rodsCharacters.lineTest}</td>
                <td class="text-center align-middle">${rodsCharacters.action}</td>
                <td class="text-center align-middle">${rodsCharacters.weight}</td>
                <td class="text-center align-middle">${rodsCharacters.section}</td>
                <td class="text-center align-middle">${rodsCharacters.tLength}</td>
                <td class="text-center align-middle">${rodsCharacters.modelType}</td>
                <c:if test="${sessionScope.userRole.equals('ADMIN')}">
                    <td class="text-center align-middle">
                        <div class="btn-group" role="group" aria-label="Basic example">
                            <a href="editRodsCh?id=${rodsCharacters.id}" class="btn btn-primary" role="button">Edit</a>
                            <a href="deleteRodsCh?id=${rodsCharacters.id}" class="btn btn-secondary" role="button">Delete</a>
                        </div>
                    </td>
                </c:if>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>