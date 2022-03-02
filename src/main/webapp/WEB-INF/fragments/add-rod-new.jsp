<form class="col-6 needs-validation" action="${pageContext.request.contextPath}/base/addMyRod" novalidate method="post">
  <div>
    <table>
      <thead>
      <tr>
        <td class="text-center align-middle">
          <label for="inputM" class="form-label">Model</label>
          <input type="text" class="form-control" name="model" id="inputM" required></td>
        <td class="text-center align-middle">
          <label for="inputL" class="form-label">Length</label>
          <input type="text" class="form-control" name="length" id="inputL" required></td>
        <td class="text-center align-middle">
          <label for="inputP" class="form-label">Power</label>
          <input type="text" class="form-control" name="power" id="inputP" required></td>
        <td class="text-center align-middle">
          <label for="inputLur" class="form-label">Lure test,g</label>
          <input type="text" class="form-control" name="lureTest" id="inputLur" required></td>
        <td class="text-center align-middle">
          <label for="inputLin" class="form-label">Lure test,g</label>
          <input type="text" class="form-control" name="lineTest" id="inputLin" required></td>
        <td class="text-center align-middle">
          <label for="inputA" class="form-label">Action</label>
          <input type="text" class="form-control" name="action" id="inputA" required></td>
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
          <label for="inputMR" class="form-label">Model Rods</label>
          <input type="text" class="form-control" name="modelType" id="inputMR" required></td>

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