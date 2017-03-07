
INSERT INTO `game` (`idGame`, `Name`, `Quantity`, `Image`, `Site_idSite`) VALUES
(1, 'Agricola', 1, 'agricola.jpg', 1),
(2, 'Legendary', 2, 'legendary.jpg', 1),
(3, 'Munchkin deluxe', 3, 'munchkin_deluxe.jpg', 1),
(4, '7 Wonders', 1, '7wonders.jpeg', 1);


INSERT INTO `site` (`idSite`, `Name`) VALUES
(1, 'Ludotheque de Rennes');


INSERT INTO `user` (`idUser`, `FirstName`, `LastName`, `Login`, `Password`) VALUES
(1, 'Gweltaz', ' ', 'gweltaz', 'gweltaz'),
(2, 'thomas', ' ', 'thomas', 'thomas'),
(3, 'mathieu', ' ', 'mathieu', 'mathieu');
