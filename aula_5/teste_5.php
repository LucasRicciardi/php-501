<?php

require_once "bootstrap.php";

use Curso\Chat\Entidades\ChatRoom;
use Curso\Chat\Entidades\Messages;
use Curso\Chat\Entidades\Profile;
use Curso\Chat\Entidades\User;

$chatRoom = new ChatRoom();

$user_1 = new User();
$user_2 = new User();

$profile_1 = new Profile();
$profile_2 = new Profile();

$user_1->setProfile($profile_1);
$profile_1->setUser($user_1);

$user_2->setProfile($profile_2);
$profile_2->setUser($user_2);

$chatRoom->postMessage($user_1, 'olá');
$chatRoom->postMessage($user_2, 'tudo bem?');

$entityManager->persist($user_1);
$entityManager->persist($user_2);

$entityManager->persist($profile_1);
$entityManager->persist($profile_2);

$entityManager->persist($chatRoom);

$entityManager->flush();


