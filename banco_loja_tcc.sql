-- Banco de dados para o projeto TCC: Empire's Rent (E-commerce)
-- Compatível com MySQL 5.7+, MySQL 8.x, MariaDB

CREATE DATABASE IF NOT EXISTS `loja_tcc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE `loja_tcc`;

-- --------------------------------------------------------
-- Estrutura da tabela `qc_categorias`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_categorias`;
CREATE TABLE `qc_categorias` (
  `cate_id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_nome` varchar(150) NOT NULL,
  `cate_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`cate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qc_categorias` (`cate_id`, `cate_nome`, `cate_slug`) VALUES
(1, 'Calçados', 'calcados'),
(2, 'Camisas', 'camisas'),
(3, 'Calças', 'calcas'),
(4, 'Sapatênis', 'sapatenis'),
(5, 'Tênis Esportivos', 'tenis-esportivos');

-- --------------------------------------------------------
-- Estrutura da tabela `qc_produtos`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_produtos`;
CREATE TABLE `qc_produtos` (
  `pro_id` int(11) NOT NULL AUTO_INCREMENT,
  `pro_categoria` int(11) NOT NULL,
  `pro_nome` varchar(100) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_peso` double(9,3) NOT NULL DEFAULT 0.000,
  `pro_valor` double(9,2) NOT NULL DEFAULT 0.00,
  `pro_altura` int(11) NOT NULL DEFAULT 0,
  `pro_largura` int(11) NOT NULL DEFAULT 0,
  `pro_comprimento` int(11) NOT NULL DEFAULT 0,
  `pro_img` varchar(255) NOT NULL,
  `pro_slug` varchar(100) NOT NULL,
  `pro_ref` varchar(100) NOT NULL,
  `pro_modelo` varchar(100) NOT NULL,
  `pro_estoque` int(11) NOT NULL DEFAULT 0,
  `pro_ativo` varchar(10) NOT NULL DEFAULT 'SIM',
  PRIMARY KEY (`pro_id`),
  KEY `fk_qc_produtos_categorias` (`pro_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qc_produtos` (`pro_id`, `pro_categoria`, `pro_nome`, `pro_desc`, `pro_peso`, `pro_valor`, `pro_altura`, `pro_largura`, `pro_comprimento`, `pro_img`, `pro_slug`, `pro_ref`, `pro_modelo`, `pro_estoque`, `pro_ativo`) VALUES
(1, 4, 'Sapatênis Calvin Klein Couro', 'Sapatênis Calvin Klein masculino confeccionado em couro legítimo de alta durabilidade e acabamento premium.', 0.800, 249.90, 12, 20, 32, 'sapatenis-calvin-klein.jpg', 'sapatenis-calvin-klein-couro', 'CK-001', 'Casual Premium', 15, 'SIM'),
(2, 4, 'Sapatênis Burn Urbano', 'Sapatênis Burn modelo urbano casual, ideal para uso diário com palmilha anatômica e solado antiderrapante.', 0.750, 159.90, 11, 19, 31, 'sapatenis-burn.jpg', 'sapatenis-burn-urbano', 'BN-002', 'Urbano Conforto', 20, 'SIM'),
(3, 5, 'Tênis Asics Gel Performance', 'Tênis Asics com tecnologia Gel para absorção de impacto, indicado para treinos e caminhadas.', 0.700, 319.90, 13, 22, 33, 'tenis-asics.jpg', 'tenis-asics-gel-performance', 'AS-003', 'Gel Run', 10, 'SIM'),
(4, 5, 'Tênis Corvette Sport', 'Tênis esportivo Corvette com design aerodinâmico e solado em EVA expandido para máxima leveza.', 0.650, 199.90, 12, 20, 32, 'tenis-corvete.jpg', 'tenis-corvette-sport', 'CV-004', 'Sport Edition', 12, 'SIM'),
(5, 1, 'Tênis Couro Classic Marrom', 'Tênis clássico em couro legítimo marrom com pespontos artesanais e interior forrado em tecido macio.', 0.850, 229.00, 12, 20, 32, 'tenis-couro-01.jpg', 'tenis-couro-classic-marrom', 'TC-005', 'Classic Brown', 8, 'SIM'),
(6, 1, 'Tênis Couro Nobuck Café', 'Tênis confeccionado em nobuck café com acabamento especial e solado costurado de alta durabilidade.', 0.820, 239.00, 12, 20, 32, 'tenis-couro-02.jpg', 'tenis-couro-nobuck-cafe', 'TC-006', 'Nobuck Cafe', 9, 'SIM'),
(7, 5, 'Tênis Nike Shox Turbo', 'Tênis Nike Shox Turbo com colunas de amortecimento ativas para máxima performance esportiva.', 0.900, 399.90, 14, 22, 34, 'tenis-nike-shox.jpg', 'tenis-nike-shox-turbo', 'NK-007', 'Shox Turbo', 6, 'SIM'),
(8, 2, 'Camisa Casual Manga Longa', 'Camisa social/casual em tecido 100% algodão de alta respirabilidade e corte slim fit moderno.', 0.300, 119.90, 5, 25, 30, 'camisa.jpg', 'camisa-casual-manga-longa', 'CM-008', 'Slim Casual', 25, 'SIM'),
(9, 3, 'Calça Jeans Slim Fit', 'Calça jeans tradicional com elastano, lavagem especial e modelagem que veste perfeitamente.', 0.600, 149.90, 6, 26, 32, 'calca.jpg', 'calca-jeans-slim-fit', 'CJ-009', 'Slim Fit Flex', 18, 'SIM'),
(10, 3, 'Calça Chino Confort', 'Calça chino em sarja de algodão premium, perfeita para composições casuais e formais.', 0.550, 139.90, 6, 25, 31, 'calca02.jpg', 'calca-chino-confort', 'CC-010', 'Chino Casual', 14, 'SIM');

-- --------------------------------------------------------
-- Estrutura da tabela `qc_imagens`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_imagens`;
CREATE TABLE `qc_imagens` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `img_nome` varchar(100) NOT NULL,
  `img_pro_id` int(11) NOT NULL,
  PRIMARY KEY (`img_id`),
  KEY `img_pro_id` (`img_pro_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qc_imagens` (`img_id`, `img_nome`, `img_pro_id`) VALUES
(1, 'sapatenis-calvin-klein.jpg', 1),
(2, 'sapatenis-burn.jpg', 2),
(3, 'tenis-asics.jpg', 3),
(4, 'tenis-corvete.jpg', 4),
(5, 'tenis-couro-01.jpg', 5),
(6, 'tenis-couro-02.jpg', 6),
(7, 'tenis-couro-03.jpg', 6),
(8, 'tenis-nike-shox.jpg', 7),
(9, 'camisa.jpg', 8),
(10, 'calca.jpg', 9),
(11, 'calca02.jpg', 10);

-- --------------------------------------------------------
-- Estrutura da tabela `qc_clientes`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_clientes`;
CREATE TABLE `qc_clientes` (
  `cli_id` int(11) NOT NULL AUTO_INCREMENT,
  `cli_nome` varchar(80) NOT NULL,
  `cli_sobrenome` varchar(80) NOT NULL,
  `cli_data_nasc` date NOT NULL,
  `cli_rg` varchar(20) NOT NULL,
  `cli_cpf` varchar(20) NOT NULL,
  `cli_ddd` int(2) NOT NULL,
  `cli_fone` varchar(20) NOT NULL,
  `cli_celular` varchar(20) NOT NULL,
  `cli_endereco` varchar(100) NOT NULL,
  `cli_numero` varchar(20) NOT NULL,
  `cli_bairro` varchar(80) NOT NULL,
  `cli_cidade` varchar(80) NOT NULL,
  `cli_uf` varchar(2) NOT NULL,
  `cli_cep` varchar(10) NOT NULL,
  `cli_email` varchar(100) NOT NULL,
  `cli_data_cad` date NOT NULL,
  `cli_hora_cad` time NOT NULL,
  `cli_pass` varchar(100) NOT NULL,
  PRIMARY KEY (`cli_id`),
  UNIQUE KEY `cli_cpf` (`cli_cpf`),
  UNIQUE KEY `cli_email` (`cli_email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Senha padrão do cliente de teste: 123456 (md5: e10adc3949ba59abbe56e057f20f883e)
INSERT INTO `qc_clientes` (`cli_id`, `cli_nome`, `cli_sobrenome`, `cli_data_nasc`, `cli_rg`, `cli_cpf`, `cli_ddd`, `cli_fone`, `cli_celular`, `cli_endereco`, `cli_numero`, `cli_bairro`, `cli_cidade`, `cli_uf`, `cli_cep`, `cli_email`, `cli_data_cad`, `cli_hora_cad`, `cli_pass`) VALUES
(1, 'Lucas', 'Inocêncio', '2000-01-01', 'MG-12.345.678', '111.222.333-44', 31, '3333-4444', '98888-7777', 'Rua das Flores', '100', 'Centro', 'Belo Horizonte', 'MG', '31535522', 'cliente@empiresrent.com.br', '2021-12-01', '10:00:00', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------
-- Estrutura da tabela `qc_pedidos`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_pedidos`;
CREATE TABLE `qc_pedidos` (
  `ped_id` int(11) NOT NULL AUTO_INCREMENT,
  `ped_cliente` int(11) NOT NULL,
  `ped_data` date NOT NULL,
  `ped_hora` time NOT NULL,
  `ped_cod` varchar(50) NOT NULL,
  `ped_ref` varchar(50) NOT NULL,
  `ped_pag_status` varchar(50) NOT NULL DEFAULT 'NAO',
  `ped_pag_forma` varchar(50) DEFAULT NULL,
  `ped_pag_tipo` varchar(50) DEFAULT NULL,
  `ped_pag_codigo` varchar(100) DEFAULT NULL,
  `ped_frete_valor` double(9,2) DEFAULT 0.00,
  `ped_frete_tipo` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ped_id`),
  KEY `ped_cliente` (`ped_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qc_pedidos` (`ped_id`, `ped_cliente`, `ped_data`, `ped_hora`, `ped_cod`, `ped_ref`, `ped_pag_status`, `ped_pag_forma`, `ped_pag_tipo`, `ped_pag_codigo`, `ped_frete_valor`, `ped_frete_tipo`) VALUES
(1, 1, '2026-10-14', '10:15:00', 'PED-20261014-001', 'REF-001', 'PAGO', 'Cartão', 'PagSeguro', 'TRANS-111', 25.00, 'SEDEX'),
(2, 1, '2026-10-15', '16:45:00', 'PED-20261015-002', 'REF-002', 'NAO', 'Boleto', 'Boleto Bancário', 'TRANS-222', 18.50, 'PAC');

-- --------------------------------------------------------
-- Estrutura da tabela `qc_pedidos_itens`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_pedidos_itens`;
CREATE TABLE `qc_pedidos_itens` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `item_produto` int(11) NOT NULL,
  `item_valor` double(9,2) NOT NULL,
  `item_qtd` int(11) NOT NULL,
  `item_ped_cod` varchar(50) NOT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_produto` (`item_produto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `qc_pedidos_itens` (`item_id`, `item_produto`, `item_valor`, `item_qtd`, `item_ped_cod`) VALUES
(1, 1, 249.90, 1, 'PED-20261014-001'),
(2, 8, 119.90, 2, 'PED-20261015-002');

-- --------------------------------------------------------
-- Estrutura da tabela `qc_user`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `qc_user`;
CREATE TABLE `qc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_nome` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_pw` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Senha padrão do administrador: admin123 (md5: 0192023a7bbd73250516f069df18b500)
INSERT INTO `qc_user` (`user_id`, `user_nome`, `user_email`, `user_pw`) VALUES
(1, 'Administrador', 'empiresrent@gmail.com', '0192023a7bbd73250516f069df18b500'),
(2, 'Admin Lucas', 'admin@empiresrent.com.br', '0192023a7bbd73250516f069df18b500');
