SELECT DISTINCT
    c.nama_pelanggan,
    c.email,
    c.kota,
    s.diskon
FROM
    Sales s
JOIN
    Customers c ON s.customer_id = c.customer_id
WHERE
    s.diskon > 0.00
ORDER BY
    s.diskon DESC;