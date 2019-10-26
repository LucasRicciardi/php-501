<?php

class ContaBancaria
{
	const IMPOSTO = 0.02;

	private $saldo;

	public function __construct()
	{
		$this->saldo = 0;
	}

	public function consultarSaldo()
	{
		return $this->saldo;
	}

	public function depositar($quantidade)
	{
		$this->saldo += $quantidade;
	}

	public function sacar($quantidade)
	{
		if ($this->saldo < $quantidade) {
			throw new Exception('Saldo insuficiente');
		}

		$this->saldo -= $quantidade;

	}

}

class Cliente
{
	private $nome;
	private $cpf;
	private $conta;

	public function __construct($nome, $cpf)
	{
		$this->nome = $nome;
		$this->cpf = $cpf;
		$this->conta = null;		
	}

	public function setConta($conta)
	{
		$this->conta = $conta;
	}

	public function getConta()
	{
		return $this->conta;
	}
}

$cliente = new Cliente('Lucas', 'cpf');
$conta = new ContaBancaria();

$cliente->setConta($conta);
// $conta->setCliente($cliente);

$cliente
	->getConta()
	->getBanco()
	->getGerente()
;

