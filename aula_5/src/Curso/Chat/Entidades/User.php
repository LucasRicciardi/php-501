<?php

namespace Curso\Chat\Entidades;

/**
*	@Entity 
*	@Table(name="tb_users")
*/
class User
{
	/**
	*	@Id
	*	@Column(type="integer")
	*	@GeneratedValue
	*/
	protected $id;

	/**
	*	@OneToOne(targetEntity="Profile")
	*/
	protected $profile;

	public function getProfile()
	{
		return $this->profile;
	}

	public function setProfile($profile)
	{
		$this->profile = $profile;
	}
}