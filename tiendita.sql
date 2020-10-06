

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

USE tiendita;


CREATE TABLE `articulo` (
  `id_articulo` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` double NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `id_proveedor` int NOT NULL
);

--
-- Dumping data for table `articulo`
--

INSERT INTO `articulo` (`id_articulo`, `nombre`, `precio`, `tipo`, `id_proveedor`) VALUES
(7, 'Televisor', 100, 'Electrodomesticos', 1),
(8, 'Samsung S20', 1200, 'SmartPhone', 3),
(9, 'Laptop', 500, 'Tech', 2);



CREATE TABLE `proveedor` (
  `id_proveedor` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `telefono` varchar(9) NOT NULL,
  `direccion` varchar(100) NOT NULL
);

--
-- Dumping data for table `proveedor`
--

INSERT INTO `proveedor` (`id_proveedor`, `nombre`, `apellido`, `telefono`, `direccion`) VALUES
(1, 'Luis', 'Bonilla', '1234-1234', 'Lourdes'),
(2, 'Ismael', 'Castillo', '1212-1212', 'Ciudad Arce'),
(3, 'Mario', 'Perez', '3434-3434', 'Santa Tecla');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articulo`
--
ALTER TABLE `articulo`
  ADD PRIMARY KEY (`id_articulo`),
  ADD KEY `id_proveedor` (`id_proveedor`);

--
-- Indexes for table `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);


ALTER TABLE `articulo`
  MODIFY `id_articulo` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `proveedor`
--
ALTER TABLE `proveedor`
  MODIFY `id_proveedor` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articulo`
--
ALTER TABLE `articulo`
  ADD CONSTRAINT `articulo_ibfk_1` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedor` (`id_proveedor`);
COMMIT;


