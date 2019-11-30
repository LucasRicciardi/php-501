<?php

class SingletonPattern
{
	private static $instance = null;

	public $x;

	public static getSingleton()
	{
		if (!self::instance) {
			self::instance = new SingletonPattern(10);
		}

		return self::instance;
	}

	private function __construct($x)
	{
		$this->x = $x;
	}

	private function __clone()
	{}
}


class DbConnection
{
	private static $connection;

	private static $server;
	private static $user;
	private static $password;

	public static function getConnection()
	{
		if (!self::connection) {
			self::connection = new new PDO(
				$server, 
				$user, 
				$password
			);
		}

		return self::connection;
	}
}

