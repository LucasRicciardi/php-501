<?php

class State
{
	public $mood;

	public function __construct($mood)
	{
		$this->mood = $mood;
	}
}

class Person
{
	private $states;
	private $currentState;

	private $stateHistory;

	public function __construct()
	{
		$this->states = [];
	}

	public function addState($key, $state)
	{
		$this->states[$key] = $state;
	}

	public function setState($key)
	{
		$this->stateHistory[] = $key;
		$this->currentState = $this->states[$key];
	}

	public function getMood()
	{
		return $this->currentState->mood;
	}
}

$p = new Person();

$p->addState(0, new State('bom humor'));
$p->addState(1, new State('mal humor'));
$p->addState(2, new State('feliz'));
$p->addState(3, new State('triste'));

$p->setState(2);

echo $p->getMood() . '<br>';

$p->setState(0);

echo $p->getMood() . '<br>';

