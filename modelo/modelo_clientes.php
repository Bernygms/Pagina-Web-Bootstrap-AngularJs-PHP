<?php
$data =  json_decode(file_get_contents('php://input'),TRUE);
if (isset($data['categoria'])){
	require __DIR__ . '/modelo.php';
	$categori_cliente =  (isset($data['categoria']['id']) ? $data['categoria']['id'] : NULL);
	if($categori_cliente == NULL){
		http_response_code(400);
		echo json_encode(['errors' => ["Todos los campos son obligatorios, Identificador"]]);
	}else{
		$crud = new Crud();
		echo $crud->getCliente($categori_cliente);
	}
}else{
	echo json_encode(['errors' => ["Todos los campos son obligatorios"]]);
}
?>