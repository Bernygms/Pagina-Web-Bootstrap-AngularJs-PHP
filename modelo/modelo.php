<?php
require __DIR__ .'/connection.php';
class Crud{
	protected $db;
	public function __construct(){
		$this->db = DB();
	}
	public function Read(){
		$query = $this->db->prepare("SELECT * FROM categorias");
		$query->execute();
		$data = array();
		while($row = $query-> fetchAll(PDO::FETCH_ASSOC)){
			$data["categorias"] = $row;
		}
		header('Content-type: application/json; charset=utf-8');
		return json_encode($data);
	}

	public function getCliente($categoria_cliente){
		$query = $this->db->prepare("SELECT id_cliente, nombre_cliente, perfil_url_cliente, categoria_cliente,pk_galeria_cliente FROM clientes WHERE categoria_cliente = :id order by rand() limit 0,10");
		$query->bindParam(":id", $categoria_cliente, PDO::PARAM_INT);
        $query->execute();
		$data = array();
		while($row = $query-> fetchAll(PDO::FETCH_ASSOC)){
			$data["clientes"] = $row;
		}
		header('Content-type: application/json; charset=utf-8');
		return json_encode($data);
	}
	
	public function getCPerfil($id){
        $query = $this->db->prepare("SELECT * 
        	FROM clientes INNER JOIN galeria  on  clientes.pk_galeria_cliente =  galeria.id_galeria WHERE clientes.id_cliente = :id");
        $query->bindParam(":id", $id, PDO::PARAM_INT);
        $query->execute();
        $data = array();
        while ($r = $query->fetchAll(PDO::FETCH_ASSOC)) {
            $data['perfil'] = $r;
        }

		header('Content-type: application/json; charset=utf-8');
		return json_encode($data);
	}
}
?>