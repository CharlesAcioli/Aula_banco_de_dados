<?php
header("Content-Type:application/json");

$data['status'] = 'SUCCESS';
$data['method'] = $_SERVER['REQUEST_METHOD'];


//apresentar as variáveis que vieram no pedido (GET ou POST)
if($data['method'] == 'GET'){
    $data['data'] = $_GET;
}elseif($data['method'] == 'POST'){
    $data['data'] == $_POST;
}



//Se eu não criar nada na pasta app, nada irá funcionar, pois não tem arquivos para manipular.
echo json_encode($data);