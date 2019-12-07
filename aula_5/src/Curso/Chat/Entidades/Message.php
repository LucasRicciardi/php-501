<?php

namespace Curso\Chat\Entidades;

/**
*	@Entity 
*	@Table(name="tb_messages")
*/
class Message
{
	/**
	*	@Id
	*	@Column(type="integer")
	*	@GeneratedValue
	*/
	protected $id;

	/**
	*	@ManyToOne(targetEntity="User")
	*/
	protected $user;

	/**
	*	@ManyToOne(targetEntity="ChatRoom")
	*/
	protected $chatRoom;

	public function __construct($user, $chatRoom, $text)
	{
		$this->user = $user;
		$this->chatRoom = $chatRoom;
	}
}