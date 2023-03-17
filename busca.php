<?php
include('conectadb.php');

if($_SERVER['REQUEST_METHOD'] == 'POST'){
    $busca = $_POST['busca'];
    $sql = "SELECT * FROM tbbusca WHERE nome = '$busca'";
    $result = mysqli_query($link,$sql);
    while($tbl = mysqli_fetch_array($result)){
        echo("Nome: " . $tbl[1] . " - Idade: " . $tbl[2] . "<br>");
    }
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Busca</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <style>
        .selecao{
            width: 165px;
        }
        .selecao:hover{
            color: #FFF;
            background-color: darkblue;
            cursor: pointer;
        }
        #searchResults{
            background-color: rgba(255,255,255,1);
            float: left;
            position: absolute;
            top:50px;
            left:10px;
            width: 169px;
            
            border-radius: 3px;
        }
        #searchResults div{
            float: left;
            position: relative;
        }

    </style>

    
</head>
<body>
    <form method="post" id="form">
        <input type="text" name="busca" id="busca">
        <input type="submit" value="enviar"><br>
        <div id="searchResults"></div><br>
        

    </form>
</body>
</html>
<script>
function selecao(idcont){
    document.getElementById('busca').value = document.getElementById(idcont).innerHTML;
    document.getElementById('form').submit();
}

$(document).ready(function(){
    $('#busca').keyup(function(){
        var query = $(this).val();
        $.ajax({
            url: 'buscar_sugestoes.php',
            type: 'POST',
            data: {query: query},
            success: function(data){
                $('#searchResults').html(data);
            }
        });
    });
});
</script>
