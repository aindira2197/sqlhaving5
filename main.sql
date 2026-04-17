CREATE TABLE sales (
    id INT,
    product VARCHAR(50),
    amount INT
);

INSERT INTO sales VALUES
(1, 'Telefon', 300),
(2, 'Telefon', 250),
(3, 'Noutbuk', 200);

SELECT product, SUM(amount) AS total_sales
FROM sales
GROUP BY product
HAVING SUM(amount) > 500;
