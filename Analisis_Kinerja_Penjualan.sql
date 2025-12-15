SELECT
    c.kota,
    COUNT(DISTINCT s.customer_id) AS Jumlah_Pelanggan_Aktif,
    SUM(s.total_penjualan) AS Total_Revenue_Per_Kota,
    AVG(s.total_penjualan) AS Rata_Rata_Nilai_Pesanan
FROM
    Sales s
JOIN
    Customers c ON s.customer_id = c.customer_id
GROUP BY
    c.kota
ORDER BY
    Total_Revenue_Per_Kota DESC;