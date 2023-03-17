<?php
include('conectadb.php');
$sugestoes[] = "";

// Obter a consulta de pesquisa do campo de entrada
$query = $_POST['query'];
if ($query != "") {
    $sql = "SELECT nome from tbbusca WHERE nome like '$query%' ORDER BY nome";
    $result = mysqli_query($link, $sql);
    while ($tbl = mysqli_fetch_array($result)) {
        array_push($sugestoes, $tbl[0]);
    }
    // Executar uma consulta para buscar sugestões de pesquisa
    // Aqui está um exemplo simples de uma consulta que retorna sugestões aleatórias
    //$suggestions = array('sugestão 1', 'sugestão 2', 'sugestão 3', 'sugestão 4', 'sugestão 5');
    //shuffle($sugestoes);

    // Retornar as sugestões em formato HTML
    $idcont=0;
    foreach ($sugestoes as $sugestao) {   
        echo ("<div onclick='selecao($idcont)' id='$idcont' class='selecao'>$sugestao</div>");
        $idcont++;
    }
}
