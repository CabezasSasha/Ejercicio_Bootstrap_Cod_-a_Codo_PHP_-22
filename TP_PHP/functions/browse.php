<?php
    include 'header.php';
    include 'db.php';
?>
<div class="container">
    <br>
    <a href="create.php" class='btn btn-outline-dark mb-2'> <i class="bi bi-person-plus"></i> Nuevo Usuario</a>
    <table class="table table-striped table-bordered table-hover">
        <thead class="table-dark">
          <tr>
              <th  scope="col">Id</th>
              <th  scope="col">Apellido</th>
              <th  scope="col">Nombre</th>
              <th  scope="col">DNI</th>
              <th  scope="col">Email</th>
              <th  scope="col">Teléfono</th>
              <th  scope="col">Seniority</th>
              <th  scope="col" colspan="3" class="text-center">Operaciones</th>
          </tr>  
        </thead>
        <tbody>
          <tr>
            <?php
            $query="SELECT * FROM usuarios";               // SQL query to fetch all table data
            $view_users= mysqli_query($conn,$query);    // sending the query to the database

            //  displaying all the data retrieved from the database using while loop
            while($row= mysqli_fetch_assoc($view_users)){
                $id             = $row['id_usuario'];                
                $Apellido    = $row['apellido']; 
                $Nombre      = $row['nombre']; 
                $DNI         = $row['DNI']; 
                $Email       = $row['email']; 
                $Telefono    = $row['teléfono'];
                $Seniority   = $row['Seniority'];        

                echo "<tr >";
                echo " <th scope='row' >{$id}</th>";
                echo " <td > {$Apellido}</td>";
                echo " <td > {$Nombre}</td>";
                echo " <td > {$DNI}</td>";
                echo " <td > {$Email}</td>";
                echo " <td > {$Telefono}</td>";
                echo " <td > {$Seniority} </td>";

                echo " <td class='text-center'> <a href='view.php?user_id={$id}' class='btn btn-primary'> <i class='bi bi-eye'></i> </a> </td>";

                echo " <td class='text-center' > <a href='update.php?edit&user_id={$id}' class='btn btn-success'><i class='bi bi-pencil'></i> </a> </td>";

                echo " <td  class='text-center'>  <a href='delete.php?delete={$id}' class='btn btn-danger'> <i class='bi bi-trash'></i> </a> </td>";
                echo " </tr> ";
                  }  
                ?>
          </tr>  
        </tbody>
      </table>
  </div>

<!-- a BACK button to go to the index page -->
<div class="container text-center mt-5">
    <a href="admin.php" class="btn btn-warning mt-5"> Volver </a>
</div>
<br>
<?php
    include 'footer.php'
?>
