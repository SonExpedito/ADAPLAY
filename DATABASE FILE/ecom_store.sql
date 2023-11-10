-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 10/11/2023 às 07:40
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ecom_store`
--
create database `ecom_store`;
use `ecom_store`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `about_us`
--

CREATE TABLE `about_us` (
  `about_id` int(10) NOT NULL,
  `about_heading` text NOT NULL,
  `about_short_desc` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `about_us`
--

INSERT INTO `about_us` (`about_id`, `about_heading`, `about_short_desc`, `about_desc`) VALUES
(1, 'About Us - Our Story', '\r\nIt is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters,\r\n', 'Rhone was the collective vision of a small group of weekday warriors. For years, we were frustrated by the lack of activewear designed for men and wanted something better. With that in mind, we set out to design premium apparel that is made for motion and engineered to endure.\r\n\r\nAdvanced materials and state of the art technology are combined with heritage craftsmanship to create a new standard in activewear. Every product tells a story of premium performance, reminding its wearer to push themselves physically without having to sacrifice comfort and style.\r\n\r\nBeyond our product offering, Rhone is founded on principles of progress and integrity. Just as we aim to become better as a company, we invite men everywhere to raise the bar and join us as we move Forever Forward.');

-- --------------------------------------------------------

--
-- Estrutura para tabela `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(2, 'Administrator', 'admin@mail.com', 'Password@123', 'user-profile-min.png', '7777775500', 'Morocco', 'Front-End Developer', ' Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical ');

-- --------------------------------------------------------

--
-- Estrutura para tabela `bundle_product_relation`
--

CREATE TABLE `bundle_product_relation` (
  `rel_id` int(10) NOT NULL,
  `rel_title` varchar(255) NOT NULL,
  `product_id` int(10) NOT NULL,
  `bundle_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL,
  `p_price` varchar(255) NOT NULL,
  `size` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_top` text NOT NULL,
  `cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_top`, `cat_image`) VALUES
(2, 'Infantojuvenil', 'não', 'pngwing.com.png'),
(3, 'Infantil', 'sim', 'kidslg.jpg');

-- --------------------------------------------------------

--
-- Estrutura para tabela `contact_us`
--

CREATE TABLE `contact_us` (
  `contact_id` int(10) NOT NULL,
  `contact_email` text NOT NULL,
  `contact_heading` text NOT NULL,
  `contact_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `contact_us`
--

INSERT INTO `contact_us` (`contact_id`, `contact_email`, `contact_heading`, `contact_desc`) VALUES
(1, 'Adaplay@mail.com', 'Fale Conosco', 'Teste');

-- --------------------------------------------------------

--
-- Estrutura para tabela `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `coupon_title` varchar(255) NOT NULL,
  `coupon_price` varchar(255) NOT NULL,
  `coupon_code` varchar(255) NOT NULL,
  `coupon_limit` int(100) NOT NULL,
  `coupon_used` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `product_id`, `coupon_title`, `coupon_price`, `coupon_code`, `coupon_limit`, `coupon_used`) VALUES
(9, 31, 'Pinguim', '200', 'ADAPLAY', 30, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL,
  `customer_confirm_code` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`, `customer_confirm_code`) VALUES
(2, 'user', 'user@ave.com', '123', 'United State', 'New York', '0092334566931', 'new york', 'user.jpg', '::1', ''),
(3, 'Demo Customer', 'demo@customer.com', 'Password123', 'DemoCountry', 'DemoCity', '700000000', 'DemoAddress', 'sample_image.jpg', '::1', ''),
(4, 'Thomas', 'thomas@demo.com', 'Password123', 'One Country', 'One City', '777777777', '111 Address', 'sample_img360.png', '::1', '1427053935'),
(5, 'Fracis', 'test@customer.com', 'Password123', 'US', 'Demo City', '780000000', '112 Bleck Street', 'userav-min.png', '::1', '1634138674'),
(6, 'Sample Customer', 'customer@mail.com', 'Password123', 'Sample Country', 'Sample City', '7800000000', 'Sample Address', 'user-icn-min.png', '::1', '174829126'),
(8, 'Guilherme', 'Alex@gmail.com', '123', '', '', '(11) 4002-8922', '4', 'download (6).jpg', '::1', ''),
(9, 'Guilherme', 'guilhermebarreto072@gmail.com', '123', '12', '12', '(11) 4002-8922', '3', 'download (6).jpg', '::1', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturer_id` int(10) NOT NULL,
  `manufacturer_title` text NOT NULL,
  `manufacturer_top` text NOT NULL,
  `manufacturer_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `manufacturers`
--

INSERT INTO `manufacturers` (`manufacturer_id`, `manufacturer_title`, `manufacturer_top`, `manufacturer_image`) VALUES
(2, 'Laratec', 'não', '307957405_156424830365050_8502602063558353003_n.png'),
(3, 'Adaptabilities', 'não', 'isla_500x500.50570380_h8r4outo.png'),
(4, 'Fisher-Price', 'não', '4.png'),
(5, 'Lacoste', 'não', 'lacostelg.png'),
(7, 'Polo', 'não', 'polobn.jpg'),
(8, 'Gildan 1800', 'não', 'sample_img360.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `message_clients`
--

CREATE TABLE `message_clients` (
  `id` int(11) NOT NULL,
  `nome` varchar(220) NOT NULL,
  `email` varchar(220) NOT NULL,
  `assunto` varchar(220) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `mensagem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(8, 1835758347, 480, 'Bank Code', 1012125550, 66500, '09-14-2021'),
(9, 1144520, 480, 'Bank Code', 1025000020, 66990, '09-14-2021'),
(10, 2145000000, 480, 'Bank Code', 2147483647, 66580, '09-14-2021'),
(20, 858195683, 100, 'Bank Code', 1400256000, 47850, '09-13-2021'),
(21, 2138906686, 120, 'Bank Code', 1455000020, 202020, '09-13-2021'),
(22, 2138906686, 120, 'Bank Code', 1450000020, 202020, '09-15-2021'),
(23, 361540113, 180, 'Western Union', 1470000020, 12001, '09-15-2021'),
(24, 361540113, 180, 'UBL/Omni', 1258886650, 200, '09-15-2021'),
(25, 901707655, 245, 'Western Union', 1200002588, 88850, '09-15-2021'),
(26, 12131313, 0, 'UBL/Omni', 121, 0, '2023-09-17');

-- --------------------------------------------------------

--
-- Estrutura para tabela `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` text NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `manufacturer_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_url` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_psp_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_features` text NOT NULL,
  `product_video` text NOT NULL,
  `product_keywords` text NOT NULL,
  `product_label` text NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `manufacturer_id`, `date`, `product_title`, `product_url`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_psp_price`, `product_desc`, `product_features`, `product_video`, `product_keywords`, `product_label`, `status`) VALUES
(25, 4, 3, 2, '2023-11-10 05:13:26', 'Casal Legal - Léo e Lu', 'leo-e-lu', 'casal-legal-brinquedo-artesanal-brincanto.png', 'boneca-lu-brinquedo-adaptado-brincanto.webp', 'bonecos-adaptados-estimulo-criancas-com-deficiencia-visual.webp', 90, 70, '\r\n\r\n\r\n\r\nCasal Legal Leo e Lu, desenvolvida para interagir com a criança com deficiência visual, estimula noção do esquema corporal, conscientização sobre as partes do corpo e sobre suas posições, percepção tátil, discriminação de diferentes texturas. Bonequinhos revestidos de tecido macio, de cor branca, leves e agradáveis ao tato, representando uma menina e um menino. As pernas e os braços são soltos e presos com velcro, a boneca tem cabelo loiro e comprido, preso nas laterais do rosto com laços de fita. Boneca está com vestido amarelo, fechado com velcro nas costas e avental de tecido xadrez preto e branco. Nos pés, dois laços de fita vermelha. O boneco está vestido com macacão amarelo tendo na frente um bolso xadrez preto e branco. Sob o macacão, uma camisa do mesmo tecido xadrez preto e branco, fechada nas costas com velcro.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nPeso: Não aplicável |\r\nDimensões: Não aplicável |\r\nOpções: Boneca de pano Lu, Casal legal – Leo e Lu\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nNão disponível.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Leo e Lu', 'Presente', 'product'),
(26, 4, 2, 2, '2023-11-10 05:13:40', 'Dama Adaptado ', 'dama-adaptado-preto', 'tabuleiro-de-dama-laratec-1.png', '2xg.jpg', 'jogo-de-dama-adaptado-para-deficientes-visuais.png', 135, 110, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nCom o jogo de xadrez adaptado você conseguirá desenvolver várias habilidades como: pensamento lógico, planejamento, concentração e atenção, imaginação, criatividade, paciência e autocontrole.\r\nEspecificações\r\n\r\nTabuleiro em MDF (nas opções “dobrável” ou “inteiriço”) com base em veludo. As casas possuem furo central para encaixe das peças, sendo as casas claras (casas baixas) com rebaixamento em relação às casas escuras (casas altas).\r\n\r\nNos modelos de tabuleiros com braile, as bordas verticais e horizontais do tabuleiro possuem escritas (números nas bordas verticais e letras nas bordas horizontais) em tinta de baixo relevo e em braile.\r\n\r\nAs peças são nas cores brancas e pretas, ambas com pino de metal em sua base. As peças pretas possuem um pino em sua extremidade superior para diferenciação tátil.\r\n\r\nO tabuleiro vem acomodado em bolsa na cor preta ou azul marinho de lona acolchoada com alças. As peças são acomodadas separadamente em bolsas menores (mesmo material e cores da bolsa principal) de modo que podem ser guardadas juntas ao tabuleiro.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nBaralho Braille - Naipe Extra Gigante: – Produto desenvolvido especialmente para deficientes visuais, sendo eles cegos ou com baixa visão. Utiliza o sistema Braille. – Contando com toda a qualidade da Shopping do Braille, o Baralho Naipe Extra Gigante é perfeito para quem procura a oportunidade de tornar seus jogos de cartas mais inclusivos e acessíveis para todos. – Esse baralho possui uma cor de verso.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nPeso: Não aplicável | Dimensões: Não aplicável | Tamanho Do Tabuleiro - 30 x 30 cm, 40 x 40 cm | Tipo De Tabuleiro	- Dobrável, Inteiriço | Bordas Do Tabuleiro - Com marcações em braille e tinta, Lisas sem marcações.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n<iframe width=\"854\" height=\"480\" src=\"https://www.youtube.com/watch?v=pPV48vyi7eY\" frameborder=\"0\" allowfullscreen></iframe>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Dama Adaptado', 'Oferta', 'product'),
(27, 4, 2, 2, '2023-11-10 05:13:48', 'Xadrez Adaptado', 'xadrez-adaptado', 'Xadrez.png', 'MicrosoftTeams-image.png', 'Pessoas.png', 268, 235, '\r\n\r\n\r\n\r\n\r\nCom o jogo de xadrez adaptado você conseguirá desenvolver várias habilidades como: pensamento lógico, planejamento, concentração e atenção, imaginação, criatividade, paciência e autocontrole.\r\nEspecificações\r\n\r\nTabuleiro em MDF (nas opções “dobrável” ou “inteiriço”) com base em veludo. As casas possuem furo central para encaixe das peças, sendo as casas claras (casas baixas) com rebaixamento em relação às casas escuras (casas altas).\r\n\r\nNos modelos de tabuleiros com braile, as bordas verticais e horizontais do tabuleiro possuem escritas (números nas bordas verticais e letras nas bordas horizontais) em tinta de baixo relevo e em braile.\r\n\r\nAs peças são nas cores brancas e pretas, ambas com pino de metal em sua base. As peças pretas possuem um pino em sua extremidade superior para diferenciação tátil.\r\n\r\nO tabuleiro vem acomodado em bolsa na cor preta ou azul marinho de lona acolchoada com alças. As peças são acomodadas separadamente em bolsas menores (mesmo material e cores da bolsa principal) de modo que podem ser guardadas juntas ao tabuleiro.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\nPeso: Não aplicável | Dimensões: Não aplicável | Tamanho Do Tabuleiro: 30 x 30 cm, 40 x 40 cm | Tipo De Tabuleiro:	Dobrável, Inteiriço | Bordas Do Tabuleiro: Com marcações em braille e tinta, Lisas sem marcações.\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\nVídeo Indisponível.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Xadrez adaptado', 'Oferta', 'product'),
(28, 4, 2, 2, '2023-11-10 05:13:55', 'Trilha Adaptado', 'jogo-trilha-adaptada', 'jogo-de-trilha-adaptado-para-pessoas-com-deficiencia-visual.png', 'trilha.png', 'Trilha-tabuleiro-2-600x600-1.jpg', 140, 120, '\r\n\r\n\r\n\r\nO Jogo de Trilha adaptado é um jogo do tipo estratégico com deslocamento das peças sobre as trilhas. O Jogo de Trilha adaptado possui trilhas em alto relevo e peças com marcações táteis, tornando o jogo acessível para pessoas com deficiência visual.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nPeso: 1068 g | Dimensões: 33 × 37 × 5 cm.\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Trilha Adaptado', 'Presente', 'product'),
(29, 4, 2, 2, '2023-11-10 05:14:02', 'Bola com Guizo', 'bola-com-guizo', 'bola1.png', 'bola2.png', 'bola3.png', 80, 65, '\r\n\r\nA Bola com guizo é uma bola adaptada com um guizo na parte interna da bola, possibilitando que o usuário localize a bola através do som emitido pelo guizo, tornando-a acessível para pessoas com deficiência visual.\r\n\r\n', '\r\n\r\nPeso: Não aplicável | Dimensões: Não aplicável\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Bola Sensorial', 'Presente', 'product'),
(30, 4, 4, 2, '2023-11-10 03:02:02', 'Dominó Adaptado', 'domino-adaptado', 'domino1.png', 'domino2.png', 'IMG_2257.JPG', 200, 140, 'O Jogo de Dominó adaptado é um jogo de dominó com marcações táteis em suas peças, tornando-o acessível para pessoas com deficiência visual. O Jogo de Dominó adaptado é um jogo muito divertido, que pode ser jogado por até 04 jogadores.', 'Tabuleiro em formato retangular de 35,5cm x 34,5cm x 0,9cm (largura x comprimento x espessura), confeccionado em MDF. Dentro do tabuleiro, há cavidades de 0,3cm de profundidade em formato retangular para receber as peças do jogo. O Jogo possui 28 peças. As peças são em formato retangular, confeccionadas em MDF com dimensões de 2,5cm x 5,0cm x de 0,9cm (comprimento x largura x espessura), contendo pinos táteis em sua superfície para diferenciação tátil. As peças possuem um ressalto central de separação dos valores das peças.', '\r\n\r\n\r\n\r\n\r\n\r\n', 'Dominó Adaptado', 'Oferta', 'product'),
(31, 4, 3, 4, '2023-11-10 05:14:10', 'Linkimals - Pinguim ', 'brinquedo-de-apredizagem', 'Pinguim.png', 'pinguim2.png', 'pinguim3.png', 480, 450, '\r\n\r\n\r\n\r\nO brinquedo musical Fisher-Price Linkimals Cool Beats Penguin é um parceiro de dança super relaxante para bebês com músicas novas, luzes multicoloridas e movimentos de improvisação. Quando as crianças pressionam os botões, o pinguim bate as nadadeiras e balança de um lado para o outro enquanto músicas e frases apresentam o alfabeto, os opostos e muito mais. E quando esse amigo pinguim se encontra com outros amigos do Linkimals, eles se iluminam, conversam, cantam e brincam juntos! (Brinquedos adicionais da Linkimals vendidos separadamente e sujeitos à disponibilidade. )\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nMarca: Fisher-Price | Modelo: Linkimals Cool Beats - Pinguim | Material: Plástico resistente e seguro para crianças | Dimensões: 20 cm x 15 cm x 30 cm | Idade Recomendada: 6 meses a 3 anos.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\nVídeo Indisponível.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Pinguim Adaptado', 'Presente', 'product'),
(32, 4, 2, 2, '2023-11-10 05:14:17', 'Triângulo Soma', 'triangulo-soma', 'triangulo.png', 'soma.png', 'Triângulo-soma-1-1450x1450.png', 80, 60, '\r\n\r\nO Jogo Triângulo Soma é um quebra-cabeças matemático, do tipo “triângulo mágico”, acessível para pessoas com deficiência visual. Objetivo --> Posicionar as peças numeradas de 1 a 6 (Soma 09, 10, 11 ou 12) ou de 1 a 9 (Soma 17) de modo que a soma dos lados do triângulo sejam iguais a 09, 10, 11 ou 12 ou 17 (Soma 17).\r\n\r\n', '\r\n\r\nPeso: Não aplicável | Dimensões: Não aplicável |Tipo De Triângulo Soma | Soma 09, 10, 11 ou 12, Soma 17.\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Trilha Adaptado', 'Oferta', 'product'),
(33, 4, 2, 3, '2023-11-10 05:14:23', 'Dice Roller Adaptado', 'dice-roller', 'Dice.jpg', '61PKL4Z5LKL._AC_SX679__resized.jpg', 'dados-soltos_resized.jpg', 180, 150, '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nNosso rolo de dados tem como objetivo promover a independência de pessoas com deficiências físicas ou cognitivas, como paralisia cerebral ou autismo. Basta conectar um interruptor de acessibilidade padrão para facilitar o uso do item. Também pode ser uma ótima ferramenta de ensino para professores de educação especial, terapeutas ocupacionais, físicos e fonoaudiólogos, ou qualquer pessoa com necessidades sensoriais!\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nPeso leve e tamanho compacto, fácil de transportar e armazenar. - Nota: use 2 pilhas AA (não incluídas) | Textura confortável e suave, você se sentirá bem em sua mão | Copo de rolo de dados automático e facilmente portátil, adequado para festas ao ar livre ou entretenimento em bares | Feito de material premium para uso durável e duradouro | Ótima opção para entretenimento em clube, KTV, bar, pub, etc.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', '\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\nVídeo Indisponível.\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n', 'Dice Roller', 'Presente', 'product'),
(34, 4, 2, 2, '2023-11-10 05:14:30', 'Cubo Mágico Adaptado', 'cubo-magico-adaptado', 'Cubo-magico-adaptado-para-deficientes-visuais-faces-branca-azul-e-laranja.png', 'cubo.png', 'amarela.png', 120, 80, '\r\nO Cubo Mágico 3x3x3 Blind Cube Touch é um cubo mágico adaptado para pessoas com deficiência visual. O cubo mágico adaptado possui texturas em suas faces, de modo que o deficiente visual consiga identificar as faces tatilmente.\r\n', '\r\nCor do cubo: Preto com Cores em Tiled (Peças de plástico) | Cores das faces: Branca, amarela, azul, verde, vermelha e laranja | Relevos das faces: Lisa/ sem relevo, estrelas, corações, círculos, bolinhas e quadrados | Marca: YJ-Moyu\r\n| Modelo: Blind Cube Touch | Tamanho: 6 cm x 6 cm x 6 cm | Peso: 90g.\r\n\r\n\r\n\r\n', '\r\nVídeo Indisponível.\r\n', 'Cubo Mágico', 'Oferta', 'product');

-- --------------------------------------------------------

--
-- Estrutura para tabela `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_top` text NOT NULL,
  `p_cat_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Despejando dados para a tabela `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_top`, `p_cat_image`) VALUES
(4, 'Adaptados', 'sim', 'adaptado.png'),
(5, 'Comuns', 'não', 'Comum.png');

-- --------------------------------------------------------

--
-- Estrutura para tabela `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `about_us`
--
ALTER TABLE `about_us`
  ADD PRIMARY KEY (`about_id`);

--
-- Índices de tabela `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Índices de tabela `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  ADD PRIMARY KEY (`rel_id`);

--
-- Índices de tabela `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Índices de tabela `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Índices de tabela `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`contact_id`);

--
-- Índices de tabela `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Índices de tabela `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Índices de tabela `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturer_id`);

--
-- Índices de tabela `message_clients`
--
ALTER TABLE `message_clients`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Índices de tabela `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Índices de tabela `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Índices de tabela `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Índices de tabela `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `about_us`
--
ALTER TABLE `about_us`
  MODIFY `about_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `bundle_product_relation`
--
ALTER TABLE `bundle_product_relation`
  MODIFY `rel_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `contact_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `message_clients`
--
ALTER TABLE `message_clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de tabela `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de tabela `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de tabela `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
