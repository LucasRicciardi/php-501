<?php

namespace Curso\Chat\Entidades;

use Doctrine\Common\Collections\ArrayCollection;

/**
*	@Entity 
*	@Table(name="tb_chat_rooms")
*/
class ChatRoom
{
	/**
	*	@Id
	*	@Column(type="integer")
	*	@GeneratedValue
	*/
	protected $id;

	/**
	*	@OneToMany(targetEntity="Message", mappedBy="chatRoom", cascade={ "persist" })
	*/
	protected $messages;

	public function __construct()
	{
		$this->messages = new ArrayCollection();
	}

	public function postMessage($user, $text)
	{
		$this->messages->add(new Message($user, $this, $text));		
	}

	public function getMessages()
	{
		return $this->messages;
	}
}