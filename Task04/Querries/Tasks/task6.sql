SELECT name, phone
FROM customers
ORDER BY SUBSTRING(phone FROM LENGTH(phone) - 3 FOR 4) ASC;
