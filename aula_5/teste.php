<?php

require_once "bootstrap.php";

use Curso\Loja\Entidades\Produto;

$produtos = [
	[ 'nome' => 'TV', 'preco' => 2500 ],
	[ 'nome' => 'Sound bar', 'preco' => 650 ],
	[ 'nome' => 'Suporte TV', 'preco' => 125 ],	
];

foreach ($produtos as $p)
{
	$produto = new Produto();

	$produto->setNome($p['nome']);
	$produto->setPreco($p['preco']);

	$entityManager->persist($produto);
}

$entityManager->flush();

$productRepository = $entityManager
	->getRepository(Produto::class)
;

$produto = $productRepository->find(2);

echo "Id: {$produto->getId()}\n";
echo "Nome: {$produto->getNome()}\n";
echo "Preço: {$produto->getPreco()}\n";

$produtos = $productRepository->findAll();

foreach ($produtos as $p) {
	echo "Id: {$p->getId()}\n";
	echo "Nome: {$p->getNome()}\n";
	echo "Preço: {$p->getPreco()}\n";
	echo "---------------------------------\n";
}

$produtos = $productRepository->findBy([
	'nome' => 'TV'
]);

foreach ($produtos as $p) {
	echo "Id: {$p->getId()}\n";
	echo "Nome: {$p->getNome()}\n";
	echo "Preço: {$p->getPreco()}\n";
	echo "---------------------------------\n";
}