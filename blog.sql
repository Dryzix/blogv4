-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mer 25 Mai 2016 à 23:50
-- Version du serveur :  5.5.36
-- Version de PHP :  5.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `blog`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idUser` int(11) NOT NULL,
  `title` varchar(25) NOT NULL,
  `hook` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `url` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `idCateg` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Contenu de la table `articles`
--

INSERT INTO `articles` (`id`, `idUser`, `title`, `hook`, `content`, `url`, `date`, `idCateg`) VALUES
(1, 1, 'Les peroquets', 'D''où viennent ces créatures ?', 'Les perroquets sont en effet répartis dans deux familles différentes. La plupart sont des Psittacidés qui, en plus des perroquets, incluent des perruches, palettes, touis, etc. tandis que le Perroquet-hibou est classé avec les nestors, dans la famille des Strigopidae.', 'http://lorempicsum.com/rio/900/600/1', '2016-04-06 00:00:00', 0),
(2, 1, 'Le Toucan d''Australie', 'Ah non pas encore !', 'Toucan est le nom normalisé de certains oiseaux de la famille des Ramphastidés, dans l''ordre des Piciformes, qui, avec les araçaris et des toucanets, sont aussi appelés « toucans » dans le langage courant. Ce sont des oiseaux grimpeurs de taille moyenne, caractérisés par un bec surdimensionné et vivement coloré. Cet appendice à la fois long et haut, très léger et vascularisé, leur permet de réguler leur température. Leur longue langue est adaptée à la consommation des insectes, des fruits et des graines. Ces oiseaux sont présents dans toute l''Amérique tropicale, notamment dans la forêt amazonienne.', 'http://lorempicsum.com/rio/900/600/2', '2016-03-19 00:00:00', 0),
(3, 1, 'Comme chien et chat', 'Une amitié sans fin', 'Parodiant les classiques de films d''espionnage, ce film met en scène une lutte entre les chiens et les chats qui, tout en cachant aux humains qu''ils sont doués de parole et du même niveau d''intelligence qu''eux, s''affrontent par le biais de services secrets et de haute technologie. Une suite, Comme chiens et chats : La Revanche de Kitty Galore, lui fut donnée.', 'http://lorempicsum.com/rio/900/600/3', '2016-02-27 00:00:00', 0),
(4, 1, 'Demande en mariage!', 'Depuis le temps qu''on attendait ça !', 'L''importance du mariage diffère également selon les sociétés, notamment en fonction de la présence ou non d''autres formes de conjugalité (union libre, concubinage, union civile), des formes de celles-ci et du degré d''acceptation de ces modes de vie plus informels par la société.', 'http://lorempicsum.com/rio/900/600/4', '2016-04-24 00:00:00', 0),
(5, 1, 'Un oiseau des ...', 'Venez lire ça !', 'L''anatomie et la physiologie de la majorité des oiseaux tendent à favoriser au maximum leur vol : réduction de poids (colonne vertébrale caractérisée par le nombre élevé de vertèbres fusionnées en une pièce osseuse unique et très solide, le synsacrum ; absence de vessie, d''ovaire droit fonctionnel, peau dépourvue de glandes tégumentaires à l''exception de la glande uropygienne, allègement du squelette par des os pneumatiques, réduction de la musculature ventrale et dorsale). Le corps aérodynamique et une forte musculature pectorale sont également des facteurs favorables au vol. Enfin un métabolisme très actif favorisé par une nourriture énergétique et un système respiratoire efficace par la présence de sacs aériens leur permettent de produire la puissance élevée et durable nécessitées par le vol. La spéciation de l''avifaune terrestre a cependant donné naissance à quelques oiseaux inaptes au vol (struthioniformes, manchots…).', 'http://lorempicsum.com/rio/900/600/5', '2016-04-21 00:00:00', 0),
(6, 1, 'Rio de Janeiro', 'Elle est mondialement connue pour son carnaval, ses plages.', 'Elle est mondialement connue pour son carnaval, ses plages (Copacabana et Ipanema) ainsi que sa statue du Christ Rédempteur au sommet du Corcovado. Elle fut capitale du Royaume du Portugal, à la suite de la fuite de la cour portugaise lors de l''invasion des troupes napoléoniennes (1808-1821), puis de l''Empire du Brésil (1822-1889), de la República Velha (1889-1930), de l’Estado Novo (1937—1945) et du début de la Deuxième République jusqu''en 1960.', 'http://lorempicsum.com/rio/900/600/6', '2016-04-24 00:00:00', 0),
(7, 1, 'Un fruit un heureux !', 'Fruit : organe végétal protégeant la graine.', 'Le fruit favorise la reproduction de l''espèce, en protégeant la ou les graines et en favorisant leur dissémination.\r\n\r\nLa protection des graines en formation se fait contre les contraintes climatiques et contre les animaux (le jeune fruit n''attire pas les animaux). Le fruit mature favorise ensuite la dissémination des graines. Cette dissémination se fera d''une manière spécifique au type de fruit.', 'http://lorempicsum.com/rio/900/600/7', '2016-04-04 00:00:00', 0),
(9, 1, 'Le chien mécano', 'Clé à molette svp !', 'Le mécanicien automobile est un technicien d’atelier qui assure l’entretien, la maintenance (prévention des pannes), la réparation et le réglage des véhicules automobiles. C’est le responsable des organes mécaniques constituant l’essentiel d’un véhicule : moteur, boîte de vitesses, embrayage, suspension, direction... Il possède des notions pointues dans les domaines électrique, hydraulique, pneumatique ou encore électronique. Il peut aussi être amené à intervenir sur des activités de vente de voitures neuves ou d’occasion.', 'http://lorempicsum.com/rio/900/600/8', '2016-01-08 00:00:00', 0),
(10, 1, 'Cet été Volley-ball !', 'Venez jouer au Volley-ball !', 'Le volley-ball a été inventé le 9 février 1895 aux États-Unis par un professeur d’éducation physique des UCJG (YMCA), à Holyoke dans le Massachusetts, William G. Morgan (1870-1942), afin d''occuper les athlètes pendant l''hiver. C''est en s''inspirant à la fois du basket-ball et également du tennis qu''est née la « mintonette », le 2 décembre 1895. Un autre sport de salle, le basket-ball, a été inventé juste dix miles (seize kilomètres) plus loin dans la ville de Springfield (Massachusetts), seulement quatre années auparavant. La mintonette se devait d''être un sport de salle moins violent que le basket-ball, pour les membres les plus âgés du Young Men''s Christian Association, tout en exigeant toujours un minimum d''effort physique.', 'http://lorempicsum.com/rio/900/600/9', '2016-05-02 00:00:00', 0),
(11, 1, 'Copain comme cochon', 'Amour ou amitié ?', 'Le cannabis (Cannabis L.) est un genre botanique qui rassemble des plantes annuelles de la famille des Cannabaceae. Ce sont toutes des plantes originaires d''Asie centrale ou d''Asie du Sud. La classification dans ce genre est encore discutée.', 'http://lorempicsum.com/nemo/900/600/1', '2016-04-25 00:00:00', 0),
(12, 1, 'Rentrée scolaire !', 'Bientôt fini les vacances !', 'Les écoles peuvent être obligatoires ou facultatives, selon les pays, durant un temps plus ou moins long. Dans presque tous les pays (la France ou les États-Unis par exemple), ce n''est pas l''école qui est obligatoire, mais l''instruction des enfants. Dès lors, des parents peuvent décider d''instruire eux-mêmes leurs enfants à la maison ou de les confier à des écoles de leur choix. En France, on impose qu''en fin de cursus, les enfants aient un niveau comparable à celui des enfants scolarisés.\r\n\r\nL''âge de début d''instruction obligatoire se situe généralement aux alentours de 6 ans (6 ans au Canada et en France, 7 ans en Finlande).', 'http://lorempicsum.com/nemo/900/600/3', '2016-02-18 00:00:00', 0),
(13, 1, 'Nouvel arrivant !', 'Il est 13h30 !', 'Un aéroport est destiné au trafic aérien commercial de passagers ou de fret ainsi que toutes les activités commerciales et administratives (vente de billets, douane, etc.) qui s''y rattachent. Implanté sur un aérodrome, il est constitué par l''ensemble des bâtiments et installations qui permettent l''embarquement et le débarquement des passagers ou du fret. Le bâtiment principal, l''aérogare, est le lieu de transit entre les transports au sol, publics ou privés, et les avions. L''aérogare abrite les installations utilisées par les compagnies aériennes, les services de police ou de douane, pour effectuer les opérations d''enregistrement, de contrôle, etc. des passagers et de leurs bagages. Les aéroports les plus importants ont parfois plusieurs aérogares donnant elles-mêmes accès à des terminaux déportés où stationnent les avions.', 'http://lorempicsum.com/nemo/900/600/4', '2016-04-01 00:00:00', 0),
(14, 1, 'Pourquoi tant de haine ?', 'Un scénario de Mathieu Kassovitz', 'Le récit se déroule au lendemain d''une nuit d''émeutes opposant la jeunesse et la police dans la cité des Muguets à Chanteloup-les-Vignes (78). Ces émeutes étaient consécutives à la bavure d’un inspecteur du commissariat qui avait sérieusement blessé Abdel Ichaha, un jeune résident de la cité, lors d''une garde à vue. On suit les péripéties de trois jeunes amis d''Abdel Ichaha. Vinz, juif impertinent au tempérament violent, a soif de vengeance au nom d''Abdel. Hubert, d''origine béninoise, dealer de haschisch, ne pense qu''à quitter la cité pour une vie meilleure et se refuse à provoquer la police. Saïd tient un rôle de médiateur entre Vinz et Hubert à propos des désirs de vengeance du premier par rapport à la police.', 'http://lorempicsum.com/nemo/900/600/5', '2015-11-06 00:00:00', 0),
(15, 1, 'Le monde de Némo !', 'Tortue géniale !', 'Les Tortues (Testudines), ou Chéloniens, forment un ordre de reptiles dont la caractéristique est d''avoir une carapace. Il existe une grande variété d''espèces possédant des caractéristiques diverses, mais toutes se distinguent des autres reptiles par cette carapace qui est constituée d''un plastron au niveau du ventre et d''une dossière sur le dessus, reliés par deux ponts sur les côtés du corps. On les sépare traditionnellement en trois groupes : les tortues terrestres, les tortues aquatiques, ou tortues dulçaquicoles, et les tortues marines.', 'http://lorempicsum.com/nemo/900/600/6', '2016-02-09 00:00:00', 0),
(16, 1, 'Étoile d''aquarium !', 'Que fais-tu ici ?', 'Les étoiles de mer (Asteroidea) ou Astéries forment une classe d''échinodermes. On en dénombre au moins 1 500 espèces1 réparties dans plus de 30 familles vivant dans tous les océans. À l''âge adulte, elles arborent une forme d''étoile caractéristique, constituée d''un disque central autour duquel rayonnent 5 bras ou plus. Les étoiles de mer ont une espérance de vie d''environ 4 à 5 années, parfois plus. Elles sont un symbole maritime important. L''espèce la plus répandue en Europe et la plus étudiée est l''étoile de mer commune.', 'http://lorempicsum.com/nemo/900/600/7', '2016-03-13 00:00:00', 0),
(17, 1, 'Anémone', 'Dans quel habitat habites-tu ?', 'C''est une plante duveteuse, aux feuilles généralement persistantes pétiolées, en rosette, à trois lobes vert dessus, souvent brun rougeâtre ou violettes dessous. Les fleurs sont généralement bleues (parfois aussi blanches, roses ou pourprées) avec de cinq à dix sépales ovales.\r\n\r\nC''est une plante à la floraison précoce (mars-avril) dont il existe des variétés cultivées.', 'http://lorempicsum.com/nemo/900/600/8', '2016-01-08 00:00:00', 0),
(18, 1, 'El Bernardo Di Caprio', 'La super-famille des Paguroidea regroupe des crustacés décapodes dont les plus connus sont les pagur', 'Les bernard l''hermite, dont la morphologie rappelle celle des Brachyura bien qu''ils appartiennent à un infra-ordre distinct, se caractérisent par le fait qu''ils possèdent en général un abdomen mou dépourvu de carapace. Par conséquent, ils occupent pour se protéger des abris qui, pour la majorité des espèces, sont formés par des coquilles de gastéropode mais aussi des éponges ou des bambous. La plupart des bernard l''hermite sont aquatiques mais certains peuvent vivre dans un environnement terrestre humide, c''est en particulier le cas des bernard l''hermite d''élevage.', 'http://lorempicsum.com/nemo/900/600/9', '2016-04-16 00:00:00', 0),
(19, 1, 'Le toutou !', 'Le chien est la première espèce animale à avoir été domestiquée par l''Homme.', 'Alors qu''on estimait autrefois que le chien constituait une espèce à part entière (Canis canis ou encore Canis familiaris), les recherches génétiques contemporaines ont permis d''établir qu''il n''est que le résultat de la domestication du loup gris commun. C''est pourquoi, malgré les différences morphologiques majeures qu''on constate entre les deux animaux, les scientifiques regroupent aujourd''hui la totalité des races canines en un ensemble nommé Canis lupus familiaris, sous-espèce de Canis lupus.', 'http://lorempicsum.com/up/900/600/5', '2016-05-02 00:00:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'News'),
(6, 'Questions');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(100) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `login`, `pwd`) VALUES
(1, 'admin', 'admin');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
