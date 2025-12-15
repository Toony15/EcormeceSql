SELECT
    -- Ekstrak Tahun dan Bulan untuk pengelompokan
    DATE_FORMAT(s.tanggal_penjualan, '%Y-%m') AS Periode_Bulan,
    
    -- Agregasi: Total Penjualan
    SUM(s.total_penjualan) AS Total_Revenue,
    
    -- Agregasi: Total Margin Kotor (Revenue - COGS)
    SUM(s.total_penjualan - (s.kuantitas * p.biaya_produksi)) AS Total_Gross_Margin
FROM
    Sales s
JOIN
    Products p ON s.product_id = p.product_id
GROUP BY
    Periode_Bulan
ORDER BY
    Periode_Bulan;