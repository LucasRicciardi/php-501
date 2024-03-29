<?php

class Pessoa
{
	public $nome;
	public $dataNascimento;
}

class Cliente extends Pessoa
{
	public $rg;
	public $cpf;
	public $email;
}

class Funcionario extends Pessoa
{
	public $cargo;
	public $setor;
	public $encarregado;
}

class Fabrica
{
	public static function criar(string $classe)
	{
		switch ($classe)
		{
			case 'Cliente':
				return new Cliente();

			case 'Funcionario':
				return new Funcionario();

			default:
				return null;
		}
	}
}


class ServiceLocator
{
	private static $instance = null;

	private $services;

	public function get()
	{
		if (!self::instance) {
			self::instance = new ServiceLocator();
		}

		return self::instance;
	}

	private function __construct()
	{
		$this->services = [];
	}

	public function registerService($name, $service)
	{
		$this->services[$name] = $service;
	}

	public function getService($name)
	{
		return $this->services[$name];
	}
}

$serviceLocator = ServiceLocator::get();

class ConsultaCep
{
	public function consultar($cep)
	{
		return [ 'logradoura' => $cep ];
	}
}

$serviceLocator->registerService('ConsultaCep', new ConsultaCep());

$consultaCep = $serviceLocator->getService('ConsultaCep');


class DbConnection
{}

class QueueConnection
{}

class RestController
{
	private $dbConnection;

	public function __construct($dbConnection, $queueConnection)
	{
		private $dbConnection;
	}
}

$r1 = new RestController(new DbConnection(), new QueueConnection());
$r2 = new RestController(new DbConnection(), new QueueConnection());
$r3 = new RestController(new DbConnection(), new QueueConnection());

class RestControllerFactory
{
	public static createRestController()
	{
		$db = new DbConnection();
		$queue = new QueueConnection();

		return new RestController($db, $queue);
	}
}

$restController = RestControllerFactory::createRestController();