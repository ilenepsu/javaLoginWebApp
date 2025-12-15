CREATE TABLE product (
                         product_id INT NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
                         product_name VARCHAR(100) NOT NULL,
                         product_description VARCHAR(255),
                         product_color VARCHAR(50),
                         product_size VARCHAR(20),
                         product_price DECIMAL(10, 2) NOT NULL,
                         CONSTRAINT PK_HD_PRODUCT PRIMARY KEY (Product_ID)
);