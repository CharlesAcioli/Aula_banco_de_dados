<?php

//dependencias

require_once('inc/config.php');
require_once('inc/api_functions.php');

$variaveis = [
    'nome' => 'Charles',
    'sobrenome' => 'Acioli'
];


$results = api_request('status', 'GET', $variaveis);

echo '<pre>';
print_r($results);