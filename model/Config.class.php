<?php 

Class Config{

	//INFORMÃÇÕES BÁSICAS DO SITE
	const SITE_URL = "http://localhost";
	const SITE_PASTA = "loja";
	const SITE_NOME = "Empire's Rent";
	const SITE_EMAIL_ADM = "empiresrent@gmail.com";
	const BD_LIMIT_POR_PAG = 6;
	const SITE_CEP = '31535522';


	//INFORMAÇÕES DO BANCO DE DADOS
	const BD_HOST = "localhost",
		  BD_USER = "root",
		  BD_SENHA = "",
		  BD_BANCO = "loja_tcc",
		  BD_PREFIX = "qc_";


	//INFORMAÇÕES PARA PHP MAILLER
	const EMAIL_HOST = "smtp.gmail.com";
	const EMAIL_USER = "empiresrent@gmail.com";
	const EMAIL_NOME = "Contato Empire's Rent";
	const EMAIL_SENHA = "empiresrent";
	const EMAIL_PORTA = 587;
	const EMAIL_SMTPAUTH = true;
	const EMAIL_SMTPSECURE = "tls";
	const EMAIL_COPIA = "empiresrent@gmail.com";



}
 ?>
