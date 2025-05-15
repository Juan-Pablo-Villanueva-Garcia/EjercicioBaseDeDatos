-- Para órdenes completas del cliente
SELECT 
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.orderDate,
    od.productCode,
    p.productName,
    od.quantityOrdered,
    od.priceEach,
    (od.quantityOrdered * od.priceEach) AS total
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode
ORDER BY c.customerName, o.orderDate;


CREATE VIEW ordenes_completas_por_cliente AS
SELECT 
    c.customerNumber,
    c.customerName,
    o.orderNumber,
    o.orderDate,
    od.productCode,
    p.productName,
    od.quantityOrdered,
    od.priceEach,
    (od.quantityOrdered * od.priceEach) AS total
FROM customers c
JOIN orders o ON c.customerNumber = o.customerNumber
JOIN orderdetails od ON o.orderNumber = od.orderNumber
JOIN products p ON od.productCode = p.productCode;
