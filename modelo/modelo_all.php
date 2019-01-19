<?php
header('Content-type: application/json; charset=utf-8');
$data =  json_decode(file_get_contents('php://input'),TRUE);
if (isset($data['cliente'])){
	require __DIR__ . '/modelo.php';
	$id_cliente =  (isset($data['cliente']['id_cliente']) ? $data['cliente']['id_cliente'] : NULL);
	if($id_cliente == NULL){
		http_response_code(400);
		echo json_encode(['errors' => ["Todos los campos son obligatorios, Identificador"]]);
	}else{
		$crud = new Crud();
		echo $crud->getCPerfil($id_cliente);
	}
}else{
	echo json_encode(['errors' => ["Todos los campos son obligatorios"]]);
}
?>