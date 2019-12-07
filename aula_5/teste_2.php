<?php

require_once "bootstrap.php";

use Curso\Loja\Entidades\Produto;

$produtoRepository = $entityManager->getRepository(Produto::class);

$produto = $produtoRepository->find(1);

$produto->setPreco(0.00);

$entityManager->persist($produto);
$entityManager->flush();
