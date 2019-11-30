<?php

class Subject
{
	public $topic;

	public function __construct($topic)
	{
		$this->topic = $topic;
	} 
}

class Observer
{
	private $listeners;
	private $subject;

	public function __construct($subject)
	{
		$this->subject = $subject;
		$this->listeners = [];
	}

	public function addListener($listener)
	{
		$this->listeners[] = $listener;
	}

	public function notify()
	{
		foreach ($this->listeners as $listener)
		{
			$listener->react($this->subject);
		}
	}
}

class Listener
{
	private $id;

	public function __construct($id)
	{
		$this->id = $id;
	}

	public function react(Subject $subject)
	{
		echo "Listener $this->id reacting to subject $subject->topic <br>";
	}
}

$subject1 = new Subject('futebol');
$subject2 = new Subject('novela');
$subject3 = new Subject('noticiário');

$observer1 = new Observer($subject1); 
$observer2 = new Observer($subject2); 
$observer3 = new Observer($subject3); 

$listeners = [];

for ($i = 0; $i < 10; $i++) {
	$listeners[] = new Listener($i + 1);
}

for ($i = 2; $i < 6; $i++) {
	$observer1->addListener($listeners[$i]);
}

for ($i = 0; $i < 10; $i++) {
	$observer2->addListener($listeners[$i]);
}

for ($i = 1; $i < 8; $i++) {
	$observer3->addListener($listeners[$i]);
}

$observer1->notify();
$observer2->notify();
$observer3->notify();