<?php

class Quadrado
{

	private $lado;

	static instancia = null;

	static function getQuadrado($lado)
	{
		if (!Quadrado::instancia) {
			Quadrado::instancia = new Quadrado();
		}

		return Quadrado::instancia;
	}

	private function __construct()
	{
	}

	public function setLado($lado)
	{
		$this->lado = $lado;

		return $this;
	}

	public function getLado()
	{
		return $this->lado;
	}
}

// 1 1 2 3 5 8 13 21 34

function fibonacci($n) 
{
	if ($n < 1) {
		return 1;
	}
	return fibonacci($n-1) + fibonacci($n-2);
}
