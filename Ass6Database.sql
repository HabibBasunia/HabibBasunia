CREATE TABLE `customers` (
  `customer_id` bigint(20),
  `name` varchar(50),
  `email` varchar(50),
  `location` varchar(50)
);

--
ALTER TABLE `customers` ADD PRIMARY KEY (`customer_id`);
--
--

CREATE TABLE `orders` (
  `order_id` bigint(20),
  `customer_id` bigint(20),
  `Odrer_date` date DEFAULT NULL,
  `total_amount` varchar(100)
);

--
ALTER TABLE `orders` ADD PRIMARY KEY (`order_id`),
ADD CONSTRAINT `customer_idfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON UPDATE CASCADE;
--
--

CREATE TABLE `products` (
  `product_id` bigint(20),
  `name` varchar(100),
  `price` varchar(50),
  `descriotion` varchar(100),
  `category_id` bigint(20)
);

--
ALTER TABLE `products` ADD PRIMARY KEY (`product_id`),
ADD CONSTRAINT `category_idfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON UPDATE CASCADE;
--
--

CREATE TABLE `categories` (
  `category_id` bigint(20),
  `name` varchar(100)
);

--
ALTER TABLE `categories` ADD PRIMARY KEY (`category_id`);
--

CREATE TABLE `order_items` (
  `item_id` bigint(20),
  `order_id` bigint(20),
  `product_id` bigint(20),
  `quantity` varchar(100),
  `unit_price` varchar(50)
);
--
ALTER TABLE `order_items` ADD PRIMARY KEY (`item_id`),
ADD CONSTRAINT `order_idfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE CASCADE,
ADD CONSTRAINT `product_idfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE CASCADE;
--
--

INSERT INTO `customers` (`customer_id`, `name`, `email`, `location`) VALUES
(1, 'Alice Johnson', 'alice.johnson@email.com', 'Dhaka'),
(2, 'Bob Smith', 'bob.smith@email.com', 'Rangpur'),
(3, 'Charlie Brown', 'charlie.brown@email.com', 'Lalmonirhat'),
(4, 'Diana Ross', 'diana.ross@email.com', 'Bogra'),
(5, 'Edward Norton', 'edward.norton@email.com', 'Nator'),
(6, 'Fiona Apple', 'fiona.apple@email.com', 'Chandpur'),
(7, 'George Lucas', 'george.lucas@email.com', 'Dhaka'),
(8, 'Helen Hunt', 'helen.hunt@email.com', 'Nator'),
(9, 'Ian McKellen', 'ian.mckellen@email.com', 'Rangpur'),
(10, 'Julia Roberts', 'julia.roberts@email.com', 'Dhaka');

INSERT INTO `orders` (`order_id`, `customer_id`,`Odrer_date`,`total_amount`) VALUES
(1, 1, '2023-10-31 07:14:38', '19.99'),
(2, 4, '2023-10-31 07:14:38','29.99'),
(3, 3, '2023-10-31 07:14:38', '9.99'),
(4, 5, '2023-10-31 07:14:38','14.99'),
(5, 6, '2023-10-31 07:14:38','24.99'),
(6, 2, '2023-10-31 07:14:38', '34.99'),
(7, 4, '2023-10-31 07:14:38', '4.99'),
(8, 3, '2023-10-31 07:14:38', '44.99'),
(9, 8, '2023-10-31 07:14:38', '54.99'),
(10, 9, '2023-10-31 07:14:38','64.99');

INSERT INTO `products` (`product_id`, `name`, `price`, `descriotion`,`category_id`) VALUES
(1, 'Product A', '19.99', 'each',1),
(2, 'Product B', '29.99', 'each',2),
(3, 'Product C', '9.99', 'each',4),
(4, 'Product D', '14.99', 'each',5),
(5, 'Product E', '24.99', 'each',10),
(6, 'Product F', '34.99', 'each',9),
(7,'Product G', '4.99', 'each',6),
(8, 'Product H', '44.99', 'each',3),
(9, 'Product I', '54.99', 'each',8),
(10, 'Product J', '64.99', 'each',7);



INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Electronics'),
(2, 'Books'),
(3, 'Clothing'),
(4, 'Home & Kitchen'),
(5, 'Sports & Outdoors'),
(6, 'Toys & Games'),
(7, 'Health & Beauty'),
(8, 'Automotive'),
(9, 'Garden & Tools'),
(10, 'Music & Movies');


INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `quantity`, `unit_price`) VALUES
(1,  1, 1, '2', '19.99' ),
(2,  2, 3, '1', '29.99'),
(3,  3, 1, '3', '9.99'),
(4,  4, 4, '2', '14.99'),
(5,  5, 1, '1', '24.99'),
(6,  6, 5, '3', '34.99'),
(7,  7, 1, '2', '4.99'),
(8,  8, 8, '1', '44.99'),
(9,  9, 2, '3', '54.99'),
(10, 10, 3, '2', '64.99');

