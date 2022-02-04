<form class="col-6 needs-validation" action="${pageContext.request.contextPath}/base/addQ" novalidate method="post">
    <div class="container">
        <table class="table caption-top">
            <thead class="table-success">
            <tr>
                <td class="text-center align-middle">
                    <label for="inputName" class="form-label">First Name</label>
                    <input type="text" class="form-control" name="name" id="inputName" required></td>
                <td class="text-center align-middle">
                    <label for="inputLastName" class="form-label">Last Name</label>
                    <input type="text" class="form-control" name="lastName" id="inputLastName" required></td>
                <td class="text-center align-middle">
                    <label for="inputAge" class="form-label">Age</label>
                    <input type="text" class="form-control" name="age" id="inputAge" required></td>
                <td class="text-center align-middle">
                    <label for="inputAddress" class="form-label">Address</label>
                    <input type="text" class="form-control" name="address" id="inputAddress" required></td>
                <td class="text-center align-middle">
                    <label for="inputLogin" class="form-label">Login</label>
                    <input type="text" class="form-control" name="login" id="inputLogin" required></td>
                <td class="text-center align-middle">
                    <label for="inputPassword" class="form-label">Password</label>
                    <input type="password" class="form-control" name="password" id="inputPassword" required></td>
                <td class="text-center align-middle">
                    <label for="inputW" class="form-label">Weight,g</label>
                    <input type="text" class="form-control" name="weight" id="inputW" required></td>
                <td class="text-center align-middle">
                    <label for="inputS" class="form-label">Section</label>
                    <input type="text" class="form-control" name="section" id="inputS" required></td>
                <td class="text-center align-middle">
                    <label for="inputTS" class="form-label">Transp.length,sm</label>
                    <input type="text" class="form-control" name="tLength" id="inputTS" required></td>

                <td class="text-center align-middle">
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="submit" class="btn btn-primary">Add rod</button>
                        <button type="reset" class="btn btn-secondary">Reset</button>
                    </div>
                </td>
            </tr>
            </thead>
        </table>
    </div>
</form>