<?php

class HttpException extends Exception
{
	private $statusCode;

	protected function __construct($statusCode, $message, $code=0, $previous=null)
	{
		$this->statusCode = $statusCode;

		parent::__construct($message, $code, $previous)
	}

	public function getStatusCode()
	{
		return $this->statusCode;
	}
}

class NotFoundException extends HttpException
{
	public function __construct($message, $code=0, $previous=null)
	{
		parent::__construct(404, $message, $code, $previous);
	}
}

class CaetanoException extends HttpException
{
	public function __construct($message, $code=0, $previous=null)
	{
		parent::__construct(400, $message, $code, $previous);
	}
}

class InternalServerException extends HttpException
{
	public function __construct($message, $code=0, $previous=null)
	{
		parent::__construct(500, $message, $code, $previous);
	}	
}

function controller($request, $action)
{
	try {

		return $action($request);

	} catch (NotFoundException $err) {

	} catch (CaetanoException $err) {

	} catch (InternalServerException $err) {

	} catch (Exception $err) {

	}

}