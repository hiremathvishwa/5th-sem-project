CREATE TABLE `supplier` (
  `supplier_id` varchar(10) NOT NULL,
  `supplier_name` varchar(15) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` bigint NOT NULL,
  PRIMARY KEY (`supplier_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `category` (
  `category_id` varchar(10) NOT NULL,
  `category_name` varchar(45) NOT NULL,
  PRIMARY KEY (`category_id`),
  UNIQUE KEY `category_name_UNIQUE` (`category_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `product` (
  ` product_id` varchar(10) NOT NULL,
  `product_name` varchar(45) NOT NULL,
  `category_id` varchar(10) DEFAULT NULL,
  `price` int NOT NULL,
  `stock` int DEFAULT NULL,
  PRIMARY KEY (` product_id`),
  UNIQUE KEY `product_name_UNIQUE` (`product_name`),
  KEY `catwgory_id_idx` (`category_id`),
  CONSTRAINT `catwgory_id` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `product_supplier` (
  `product_id` varchar(10) NOT NULL,
  `supplier_id` varchar(10) NOT NULL,
  PRIMARY KEY (`product_id`,`supplier_id`),
  KEY `supplier_id_idx` (`supplier_id`),
  CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `product` (` product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `job` (
  `job_id` varchar(10) NOT NULL,
  `job_title` varchar(45) NOT NULL,
  `job_desc` varchar(45) NOT NULL,
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employee` (
  `emp_id` varchar(10) NOT NULL,
  `emp_fname` varchar(45) NOT NULL,
  `emp_lname` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phone` bigint NOT NULL,
  `address` varchar(100) NOT NULL,
  `salary` int NOT NULL,
  `job_id` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `phone_UNIQUE` (`phone`),
  KEY `job_id_idx` (`job_id`),
  CONSTRAINT `job_id` FOREIGN KEY (`job_id`) REFERENCES `job` (`job_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user` (
  `emp_id` varchar(10) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(15) NOT NULL,
  PRIMARY KEY (`emp_id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  CONSTRAINT `emp_id` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `customer` (
  `customer_id` varchar(10) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `dob` date NOT NULL,
  `gender` char(1) NOT NULL,
  `phone_no` bigint NOT NULL,
  `points` int DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `sales` (
  `sales_id` varchar(10) NOT NULL,
  `emp_id` varchar(10) DEFAULT NULL,
  `product_id` varchar(10) DEFAULT NULL,
  `customer_id` varchar(10) DEFAULT NULL,
  `bill_id` int NOT NULL,
  `quantity` int NOT NULL,
  `total_amount` int NOT NULL,
  `sales_date` date NOT NULL,
  PRIMARY KEY (`sales_id`),
  KEY `emp_id_idx` (`emp_id`),
  KEY `product_id_idx` (`product_id`),
  KEY `customer_id_idx` (`customer_id`),
  CONSTRAINT `a` FOREIGN KEY (`emp_id`) REFERENCES `employee` (`emp_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `b` FOREIGN KEY (`product_id`) REFERENCES `product` (` product_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;