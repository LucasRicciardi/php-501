<?php

$servidor = 'pgsql:host=localhost;dbname=blog';
$usuario = 'postgres';
$senha = '';

try {
	$connection = new PDO($servidor, $usuario, $senha);
} catch (PDOException $e) {
	echo $e->getMessage();
	die;
}

class User
{
	public $id;
	public $name;
	public $email;
	public $age;

	public static function getByEmail($email)
	{
		global $connection;

		$query = $connection->query("
			SELECT * FROM tb_users WHERE email = '$email'"
		);

		if (!$query) {
			return null;
		}

		$query->setFetchMode(PDO::FETCH_CLASS, 'User');

		return $query->fetch(PDO::FETCH_CLASS);
	}

	public function save()
	{
		global $connection;

		if (!$this->id) {
			$query = $connection->prepare("INSERT INTO tb_users (name, email, age) VALUES ('$this->name', '$this->email', $this->age)");
		} else {
			$query = $connection->prepare("UPDATE tb_users SET name = '$this->name', email = '$this->email', age = $this->age WHERE id = $this->id");
		}

		$query->execute();	
	}

	public function createProfile($data)
	{
		global $connection;

		$photo = $data['photo'];
		$site = $data['site'];

		$query = $connection->query("INSERT INTO tb_profiles (user_id, photo, site) VALUES ($this->id, '$photo', '$site')");

		if (!$query) {
			return null;
		}

		$query->execute();

		$profile = new Profile();

		$profile->id = $connection->lastInsertId();
		$profile->user = $this;
		$profile->photo = $photo;
		$profile->site = $site;
		
		return $profile;
	}

	public function createProblem($data)
	{
		global $connection;	

		$subject = $data['subject'];
		$message = $data['message'];

		$query = $connection->query("INSERT INTO tb_problems (user_id, subject, message) VALUES ($this->id, '$subject', '$message')");

		if (!$query) {
			return null;
		}

		$query->execute();

		$problem = new Problem();

		$problem->id = $connection->lastInsertId();
		$problem->user = $this;
		$problem->subject = $subject;
		$problem->message = $message;
		
		return $problem;
	}
}

class Profile
{
	public $id;
	public $user;
	public $photo;
	public $site;
}

class Problem
{
	public $id;
	public $user;
	public $subject;
	public $message;
}

$user = User::getByEmail('lucas.salles@4linux.com.br');

$profile = $user->createProfile([ 
	'photo' => 'https://avatars1.githubusercontent.com/u/13923301?s=400&v=4',
	'site' => 'lucas.com.br'
]);

var_dump($profile);

for ($i = 0; $i < 10; $i++) {
	$problem = $user->createProblem([
		'subject' => 'Subject ' . $i,
		'message' => 'ok'
	]);
	var_dump($problem);
}