-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 25, 2024 at 12:04 AM
-- Server version: 5.7.24
-- PHP Version: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `expansao`
--
CREATE DATABASE IF NOT EXISTS `expansao` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `expansao`;

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

DROP TABLE IF EXISTS `contents`;
CREATE TABLE `contents` (
  `content_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `post_text` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`content_id`, `post_id`, `post_name`, `post_text`) VALUES
(1, 1, 'Os sentidos e o Design', '<p>Uma grande parte do trabalho de um Designer é estimular os sentidos dos usuários de um sistema para que haja algum tipo de experiência, seja com uma finalidade específica ou não. Como parte deste trabalho, naturalmente se espera que os trabalhos de um profissional ou de uma empresa sejam direcionados a um grupo de sentidos, às vezes apenas um ou dois.</p>\r\n\r\n<p>Ao longo dos anos, a proporção entre a exploração das diferentes perspectivas sensoriais trouxeram uma infinidade de projetos voltados à visão e audição, talvez por serem os mais viáveis de serem reproduzidos de uma forma relativamente fiel do ponto de vista tecnológico, em detrimento dos outros, que são contemplados por um número reduzido de projetos.</p>\r\n\r\n<p>Entendo que a praticidade de exibir resultados gráficos em uma tela e reproduzir uma trilha sonora em alto falantes ou fones de ouvido, o que pode tanto ser uma experiência individual quanto em grupo, em nada se compara com a complexidade técnica de acoplar um dispositivo às línguas dos usuários para alterar a percepção do paladar, que é uma experiência, por definição, individual e tecnicamente custosa. Tendo isso em mente, volto ao meu ponto anterior: Os sentidos da visão e audição são mais explorados do que os outros sentidos. Não é para menos!</p>\r\n\r\n<p>Os avanços tecnológicos nos últimos anos proporcionaram uma ampla gama de experiências que abrangem virtualmente todas as áreas do design de interação no que diz respeito à exploração de respostas sensoriais. Nesta análise eu escolhi focar em projetos de Design de Interação, mais especificamente Physical Computing, em sentidos pouco explorados. Aqui estão alguns exemplos de cada sentido:</p>\r\n\r\n<h3>Tato</h3>\r\n\r\n<h4>Tesla Suit</h4>\r\n\r\n<p>Este traje possui atuadores de resposta tátil que traz aos seus usuários a ilusão da sensação de toque por estímulos elétricos durante suas experiências multi sensoriais. O traje também dispõe de um sistema de controle de temperatura, além de captura de movimentos e leitura biométrica.</p>\r\n\r\n<img src=\"../images/posts/inserts/teslasuit.jpg\">\r\n\r\n<h4>HaptX</h4>\r\n\r\n<p>Esta luva de tecnologia háptica proporciona uma resposta de força relacionado a um ambiente virtual. Aliado ao uso de um óculos de Realidade Virtual, busca fazer com que os usuários consigam visualizar suas mãos no ambiente 3D e sentir objetos dispostos nesta realidade alternativa. Além da limitação do movimento dos dedos, este dispositivo apresenta uma tecnologia inovadora de replicação de textura por pontos de pressão na ponta dos dedos.</p>\r\n\r\n<img src=\"../images/posts/inserts/haptx.jpg\">\r\n\r\n<h4>Kiiroo</h4>\r\n\r\n<p>Este dispositivo interativo sem fios tem o intuito de explorar uma nova forma de intimidade entre casais à distância, captando parâmetros dos movimentos de cada uma das peças e modificando aspectos táteis em sua outra parte.</p>\r\n\r\n<img src=\"../images/posts/inserts/kiiroo.jpg\">\r\n\r\n<h3>Paladar</h3>\r\n\r\n<h4>Digital Flavors</h4>\r\n\r\n<p>Este projeto utiliza componentes eletrônicos para simular gostos e estimular a língua de seus usuários. Utilizando alterações de temperatura, emissão de essências e estímulo elétricos de forma direta, ele consegue recriar algumas sensações específicas, como acidez, frescor e picância.</p>\r\n\r\n<img src=\"../images/posts/inserts/digitaltaste.jpg\">\r\n\r\n<h4>Taste+</h4>\r\n\r\n<p>O projeto em questão utiliza utensílios de cozinha inteligentes para estimular a língua eletronicamente para diminuir o sentimento de necessidade de sal durante as refeições.</p>\r\n\r\n<img src=\"../images/posts/inserts/tasteplus.jpg\">\r\n\r\n<h4>Virtual Cocktail</h4>\r\n\r\n<p>Este dispositivo estimula a língua dos usuários ao mesmo tempo que emite essências e luz para alterar o paladar enquanto o usuário ingere algum líquido.</p>\r\n\r\n<img src=\"../images/posts/inserts/virtualcocktail.jpg\">\r\n\r\n<h3>Olfato</h3>\r\n\r\n<h4>iSmell</h4>\r\n\r\n<p>Conectado com o computador via USB, o dispositivo, do tamanho de uma caixa de alto falante, emite fragrâncias para adicionar mais uma dimensão à experiência do usuário.</p>\r\n\r\n<img src=\"../images/posts/inserts/ismell.jpg\">\r\n\r\n<h3>Referências</h3>\r\n<ul>\r\n    <li><a href=\"http://cutecenter.nus.edu.sg/projects/taste+.html\">http://cutecenter.nus.edu.sg/projects/taste+.html</a></li>\r\n    <li><a href=\"http://cutecenter.nus.edu.sg/projects/digital-flavor.html\">http://cutecenter.nus.edu.sg/projects/digital-flavor.html</a></li>\r\n    <li><a href=\"http://cutecenter.nus.edu.sg/projects/virtual-cocktail.html\">http://cutecenter.nus.edu.sg/projects/virtual-cocktail.html</a></li>\r\n    <li><a href=\"https://www.kiiroo.com/\">https://www.kiiroo.com/</a></li>\r\n    <li><a href=\"https://haptx.com/\">https://haptx.com/</a></li>\r\n    <li><a href=\"https://teslasuit.io/\">https://teslasuit.io/</a></li>\r\n    <li><a href=\"https://www.wired.com/1999/11/digiscent/\">https://www.wired.com/1999/11/digiscent/</a></li>\r\n</ul>'),
(2, 2, 'Interfaces Invisíveis', '<p>Os sistemas digitais que utilizamos todos os dias, às vezes sem mesmo nos dar conta, precisam de uma forma de traduzir nossas ações e desejos em uma resposta que nos possa ser percebida pelos sentidos. Para Mark Weiser, estas interações precisam ser imperceptíveis; mais precisamente, diz que as ferramentas que utilizamos precisam ser invisíveis.</p>\r\n\r\n<p>Os designers se aprofundam nas questões relacionadas à utilização de sistemas para buscar a forma mais aprimorada de utilização de sistemas, estudando usabilidade e interação humano-computador. Porém, com o estado da tecnologia atual, propiciar a “interação perfeita” sem que os meios para esta se tornem visíveis e se mostrem como intermediadores da interação é uma tarefa extremamente difícil.</p>\r\n\r\n<p>Mesmo celulares com telas capacitivas de última geração, com reconhecimento de toque, voz, digitais, face e uma extensa gama de dados sobre o usuário e sobre si próprio não atingem a este objetivo, recebendo mais atenção do que a tarefa em si ou alterando-a significativamente.</p>\r\n\r\n<p>Dentre os exemplos citados pelo autor, está a Realidade Virtual (VR). A tecnologia atual em torno desse tipo de interação, mesmo que esteja muito avançada, está muito aquém do desejado quando se refere a ser um sistema completamente invisível. Embora seja um dos meus temas favoritos, concordo que o estado de desenvolvimento anda a ritmo lento e demorado.</p>\r\n\r\n<img src=\"../images/posts/inserts/persival.jpg\">\r\n\r\n<p>O filme Jogador Número 1 mostra uma forma muito avançada de utilização deste tipo de tecnologia, com trajes que obtém todos os dados do corpo do usuário e tem a capacidade de performar intervenções sensoriais neste corpo a fim de transmitir os acontecimentos do mundo virtual de forma fiel aos sentidos dos jogadores. Porém percebe-se que, neste caso, a interação ainda está muito centrada na realidade criada e nos sentidos de seus usuários, ignorando o mundo ao seu redor.</p>\r\n\r\n<p>Qual será o computador do futuro? como esta interação se dará daqui a 20, 30, 70 anos? O meu computador vai saber o que estou pensando e realizar as ações imediatamente? que ações eu precisarei tomar para que minhas intenções sejam compreendidas por sistemas digitais e transformadas em ações?</p>\r\n\r\n<img src=\"../images/posts/inserts/eeg.jpg\">\r\n\r\n<p>Para todas essas perguntas ainda não há uma resposta definida, porém, ao meu ver os sistemas digitais do futuro serão muito mais voltados para prever o comportamento do usuário ao invés de entendê-lo. Desta forma, o usuário precisa apenas escolher os caminhos a serem tomados baseado nas opções disponíveis ou seguir como bem entender. Aliado ao sistema que conhece seu usuário e prevê suas necessidades e padrão de comportamento, deverá haver algum sistema que capta o máximo de informações sobre o corpo e mente de quem o usa, analisando e buscando padrões. Ainda não consigo imaginar tal sistema, mas com toda certeza a inteligência artificial ainda vai se tornar algo muito mais presente nas soluções que nos auxiliam no dia a dia.</p>\r\n\r\n<img src=\"../images/posts/inserts/neural-network.jpg\">\r\n\r\n<h3>Referências</h3>\r\n<ul>\r\n    <li><a href=\"http://www.nextnature.net/2006/08/the-world-is-not-a-desktop/\">http://www.nextnature.net/2006/08/the-world-is-not-a-desktop/</a></li>\r\n</ul>'),
(3, 3, 'Sistemas de Auxílio ao Motorista', '<p>O primeiro veículo autopropulsionado capaz de transportar humanos foi projetado no ano de 1769, por Nicholas Joseph Cugnot; porém, o primeiro automóvel mais próximo dos utilizados atualmente nasceu por volta de 1886, com o inventor alemão Karl Benz, o <em>Benz Patent-Motorwagen</em>.</p>\n\n<img src=\"../images/posts/inserts/motorwagen.jpg\" title=\"Imagem de domínio púplico\" alt=\"Imagem do primeiro carro projetado por Karl Benz\">\n\n<p>Um estudo encomendado pela Citroën à <em>CSA Research</em> aponta que <strong>os brasileiros passarão, em média, 4 anos e 11 meses dentro de carros ao longo da vida inteira</strong>. Dos lugares pesquisados, o Brasil é o país que mais passa tempo dentro de carros, talvez por conta do sucateamento dos transportes públicos, da falta de ciclofaixas e métodos alternativos de locomoção dentro das cidades. De qualquer forma, é um dado alarmante.</p>\n\n<p>Por conta deste tempo que gastamos em nossos veículos, as empresas de automóveis desenvolvem novas soluções de design para transformar a estadia em nossos carros mais confortável e seguro e, com o avanço das tecnologias, não é de se espantar que surjam a cada ano novas soluções tecnológicas para circunvir situações de perigo ou desconforto. </p>\n\n<p>Como motoristas, precisamos estar o tempo todo atentos aos sinais que o sistema interativo do veículo nos informa; como designers de interação, precisamos nos certificar que esses sinais sejam compreensíveis e que a informação a qual são incumbidos de transmitir seja percebida de forma rápida e eficiente, evitando acidentes ou situações de perigo.</p>\n\n<p>Os Sistemas Avançados de Auxílio ao Motorista (A.D.A.S. - <em>Advanced Driver Assistance System</em>) proporcionam diversas facilidades e dispositivos de segurança ao motorista. Desde estacionamento assistido/autônomo por parte do automóvel até sistemas de alerta de animais na pista.</p>\n\n<div class=\"video-container\"><iframe src=\"https://www.youtube.com/embed/YEn9bQkBXkE\" frameborder=\"0\" allow=\"accelerometer; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div>\n\n<div class=\"video-container\"><iframe src=\"https://www.youtube.com/embed/hp9lR4x7Kok\" frameborder=\"0\" allow=\"accelerometer; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe></div>\n\n<p>O sistema analisado neste artigo é o de alerta de ângulo morto. É chamado de “ângulo morto” o espaço próximo ao carro onde não é possível visualizar outros veículos automotivos, sejam outros carros ou motos, enquanto desejamos trocar de faixa no trânsito. O comportamento mais comum deste tipo de sensor é um ponto luminoso localizado nos retrovisores laterais do carro que acende ao perceber um objeto na área de visão prejudicada, emitindo um sinal sonoro caso o motorista não tenha percebido sua indicação e mantenha o movimento de troca de faixas.</p>\n\n<img src=\"../images/posts/inserts/blind-spot-sensor.jpg\">\n\n<p>Sinais luminosos e auditivos sem diferenciação dos demais sinais do automóvel são mais do que o suficiente quando o assunto é a necessidade de uma troca de óleo, temperatura elevada do motor ou até o aviso de que o motorista não está utilizando o cinto de segurança, porém, na minha opinião o aviso precisa ser mais incisivo quando o assunto é a segurança dos passageiros de veículos automotores, que causa riscos à integridade física de diversas pessoas.</p>\n\n<p>Os sinais luminosos precisam que o condutor esteja olhando para eles e que esteja preparado para redirecionar a atenção e rapidamente mudar de ação quando a troca de faixa se mostrar algo temporariamente impossível. Os sinais auditivos precisam ser diferentes o suficiente dos muitos outros presentes nos carros para que a informação realmente tenha efeito na agilidade em que é requerida.</p>\n\n<img src=\"../images/posts/inserts/blind-spot-sensor-2.jpg\">\n\n<p>Como indicado em <a href=\"http://expansao.gutopereira.com/post/os-sentidos-e-o-design\">outro artigo escrito por mim</a>, os sentidos da visão e audição são muito mais explorados do que os outros sentidos nos projetos voltados para humanos, o que faz com que estes sentidos sejam sobrecarregados, podendo gerar falhas. Minha sugestão de modificação para estes sistemas é a utilização de indicações sensoriais que acompanhem os sinais visuais e auditivos.</p>\n\n<p>A forma em que a informações sobre outros veículos na estrada é transmitida não leva em conta dados sobre a espacialidade, sendo direção e distância. O veículo está ou à esquerda ou à direita; ou está perto o suficiente para que sua presença seja um perigo iminente ou não está. Minha sugestão é que utilizem dos próprios pontos de contato do carro com o condutor sejam utilizados para serem transmitidas informações por meio tátil. Não apenas transmitir mais informações, mas transmiti-las de forma diferente.</p>\n\n<p>Em jogos de tiro em primeira pessoa, existe um elemento gráfico que é utilizado ao se receber um dano a alguma parte do corpo do seu avatar, indicando a intensidade da perda de vida e a direção do impacto. Ao se utilizar um traje háptico, como o Tesla Suit, essa informação é transposta para uma vibração no local aproximado de recebimento de dano, informando intensidade e direção.</p>\n\n<img src=\"../images/posts/inserts/damage-direction.jpg\">\n\n<p>Uma alternativa poderia ser a utilização de um conjunto de motores vibratórios nos bancos, vibrando a diferentes intensidades em diferentes pontos do banco do motorista, informando a direção e a proximidade de outros automóveis. Estes motores não iriam sozinhos informar o condutor da presença de um perigo iminente, mas acompanhar um sistema de alerta composto junto aos estímulos visuais e auditivos presentes hoje em dia.</p>\n\n<img src=\"../images/posts/inserts/car-sensors.png\">\n\n<h3>Referências</h3>\n<ul>\n    <li><a href=\"http://www.automotivebusiness.com.br/abinteligencia/pdf/PDF_Citroen.pdf\" target=\"_blank\">CSA RESEARCH / CITROËN – NOSSAS VIDAS DENTRO DE NOSSOS CARROS – JANEIRO 2017</a></li>\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `name` varchar(104) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(280) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(140) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `name`, `description`, `title`, `post_id`) VALUES
(1, 'os-sentidos-e-o-design.jpg', 'Neurônios de um roedor em cores. Crédito: NICHD/S. Jeong', 'Neurons from a mouse spinal cord. Author: NICHD/S. Jeong', 1),
(2, 'interfaces-invisiveis.jpg', 'Homem usando luvas pretas enquanto interage com um sistema gestual futurista. Crédito: Youflavio (https://www.flickr.com/photos/encontrado)', 'Man with black gloves interacting with a gesture based interactive system. Author: Youflavio (https://www.flickr.com/photos/encontrado)', 2),
(3, 'sistemas-avancados-de-auxilio-ao-motorista.jpg', '', '', 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `post_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `post_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_url`, `post_id`, `post_date`) VALUES
('os-sentidos-e-o-design', 1, '2019-03-31 23:02:00'),
('interfaces-invisiveis', 2, '2019-09-14 21:02:00'),
('sistemas-avancados-de-auxilio-ao-motorista', 3, '2019-10-22 08:26:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`content_id`),
  ADD UNIQUE KEY `post_id_2` (`post_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `post_id_2` (`post_id`),
  ADD KEY `post_id` (`post_id`) USING BTREE;

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `contents`
--
ALTER TABLE `contents`
  ADD CONSTRAINT `contents_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
