var webxiApp = angular.module('appWebxi', ['ngTouch']); 
webxiApp.controller('controllerWebxi', function($scope, $http){
	$scope.categoria = {};
	$scope.clientes = [];
	$scope.cliente = {};
	$scope.cliente_descripcion = {};
	$scope.perfil = [];
	$scope.errors = [];

	$scope.categoria = null;
	$scope.clientes = null;
	$scope.cliente = null;
	$scope.cliente_descripcion = null;
	$scope.perfil = null;
	$scope.errors = null;
	$scope.activar = 0;

	$scope.getCategoria = function(id_categoria){
		$scope.categoria = {'id' : id_categoria};
		$http.post('../modelo/modelo_clientes.php',{
			categoria:$scope.categoria
		})
		.then(function success(e){
			$scope.errors = [];
			$scope.clientes = e.data.clientes;
		}, function error(e){
			$scope.errors = e.data.errors;

		});
		$scope.activar = 1;
	}

	$scope.getCliente = function(index){
		$scope.cliente = {'id_cliente' : index};
		$http.post('../modelo/modelo_all.php',{
			cliente:$scope.cliente
		})
		.then(function success(e){
			$scope.errors = [];
			$scope.perfil = e.data.perfil;
		}, function error(e){
			$scope.errors = e.data.errors;
			console.log('Se produjo un error al consultar');
		});
		$scope.activar = 2;
	}

	$scope.fecha = new Date().getDate() + '-' + (new Date().getMonth() + 1) + '-' + new Date().getFullYear();

	$scope.next = function(){
		$scope.activar++;
	}
	$scope.previous = function(){
		$scope.activar--;
	}
	$scope.showNext = function(){
		$scope.mensaje =  "tooltip";

	}
	$scope.showPrevious = function(){
		$scope.mensaje =  "tooltip";
	}

});