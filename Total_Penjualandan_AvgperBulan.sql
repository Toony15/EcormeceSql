SELECT
    DATE_FORMAT(tanggal_penjualan, '%Y-%m') AS Bulan_Penjualan,
    SUM(total_penjualan) AS Total_Revenue,
    AVG(total_penjualan) AS Rata_Rata_Penjualan_Order
FROM
    Sales
GROUP BY
    Bulan_Penjualan
ORDER BY
    Bulan_Penjualan;