# ShopWeb

create DATABASE Shop;
---------------------------------------------------------------------------
use shop;
CREATE TABLE student (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
firstname VARCHAR(30) NOT NULL,
lastname VARCHAR(30) NOT NULL,
email VARCHAR(50)
)
--------------------------------------------------------------------------
CREATE USER 'name_user'@'localhost' IDENTIFIED BY 'your_password'; 
GRANT select,update,delete ON Shop.student TO 'name_user'@'localhost'; 
FLUSH PRIVILEGES;
