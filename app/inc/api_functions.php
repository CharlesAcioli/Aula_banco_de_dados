<?php

function api_request($endpoint, $method = 'GET', $variables = []){
    //iniciando curl do cliente

    $client = curl_init();

    curl_setopt($client, CURLOPT_RETURNTRANSFER, true);

    //defninir a nossa URL
    $url = API_BASE_URL;

    //se o método for GET

    if($method == 'GET'){
        $url .= "?endpoint=$endpoint";
        if(!empty($variables)){
            $url .= "&" . http_build_query($variables);
        }
    }

    //se o método for POST
    if($method == 'POST'){
        $variables = array_merge(['endpoint' => $endpoint], $variables);
        curl_setopt($client, CURLOPT_POSTFIELDS, $variables);
    }

    //incorporar o nosso endpoint
    curl_setopt($client, CURLOPT_URL, $url);

    $response = curl_exec($client);
    return json_decode($response, true);

    echo $url;
};