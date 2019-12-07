<?php

namespace Curso\Chat\Entidades;

/**
*	@Entity 
*	@Table(name="tb_profiles")
*/
class Profile
{
	/**
	*	@Id
	*	@Column(type="integer")
	*	@GeneratedValue
	*/
	protected $id;

	/**
	*	@OneToOne(targetEntity="User")
	*/
	protected $user;

	public function getUser()
	{
		return $this->user;
	}
	
	public function setUser($user)
	{
		$this->user = $user;
	}
}