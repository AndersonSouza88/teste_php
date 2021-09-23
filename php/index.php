<?php
include('conecta.php');

?>

<!DOCTYPE html>
<html lang="pt-br">
  <head>
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Teste PHP Anderson Souza</title>
    <link href="bootstrap/css/bootstrap.css" rel="stylesheet">
  </head>
  </head>
  <body>
    <div class="container">
      <div class="row">
        <div class="col-md-12">
    <h1>Aqui poderemos listas os clientes por:Nome,Email,Telefone,Cidade,Estado(UF)e Interesse</h1>
    <form action="">
        <input name="busca" value ="<?php if(isset($_GET['busca'])) echo $_GET['busca'];?>" type="text" placeholder="Digite sua pesquisa ...">
        <button type="submit" class="btn btn-success">
        <span class="glyphicon glyphicon-search"></span>
        Pesquisar
      </button>
    </form>
  </div>
  </div>

<br>
<div class="row">
  <div class="col-md-12">
    <table class=" table">
      <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">Nome</th>
            <th scope="col">E-mail</th>
            <th scope="col">Telefone</th>
            <th scope="col">Cidade</th>
            <th scope="col">UF</th>
            <th scope="col">Interesse</th>
        </tr>
      </thead>
        <?php
        
        if(!isset($_GET['busca'])){
        ?>
        <tr>
            <td colspan="7">Digite algo para pesquisa...</td>
        </tr>
        <?php
        } else{
          $pesquisa = $mysqli->real_escape_string($_GET['busca']);
          $sql_code = "SELECT * 
          FROM clientes WHERE nome LIKE '%$pesquisa%'
          OR email LIKE '%$pesquisa%'
          OR telefone LIKE '%$pesquisa%' 
          OR cidade LIKE '%$pesquisa%' 
          OR uf LIKE '%$pesquisa%'
          OR categoria LIKE '%$pesquisa%'";
          $sql_query = $mysqli->query($sql_code) or die("ERRO ao consultar! " . $mysqli->error); 

          if($sql_query->num_rows ==0){
            ?>
            <tr>
            <td colspan="7">Nenhum resultado encontrado...</td>
        </tr>
        <?php
          }else{
            while($dados = $sql_query->fetch_assoc()){
              ?>
              <tbody>
              <tr>
              <td><?php echo $dados['id'];?></td>
              <td><?php echo $dados['nome'];?></td>
              <td><?php echo $dados['email'];?></td>
              <td><?php echo $dados['telefone'];?></td>
              <td><?php echo $dados['cidade'];?></td>
              <td><?php echo $dados['uf'];?></td>
              <td><?php echo $dados['categoria'];?></td>
            </tr>
          </tbody>
              <?php
            }
          }
          ?>

          <?php   
        }?>
    </table>
  </div>
  </div>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="bootstrap/js/bootstrap.js"></script>  
    <script src="busca.js"></script>
  </body>
</html>