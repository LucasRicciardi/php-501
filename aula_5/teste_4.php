<?php

require_once "bootstrap.php";

use Curso\Loja\Entidades\Produto;
use Curso\Loja\Entidades\Carrinho;

$produtoRepository = $entityManager->getRepository(Produto::class);

$produtos = $produtoRepository->findAll();

$carrinho = new Carrinho();

$carrinho->setDataVenda(new \DateTime('now'));

foreach ($produtos as $p) {
	$carrinho->addItem($p, 2);
}

$entityManager->persist($carrinho);
$entityManager->flush();
