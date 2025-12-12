#group by
SELECT 
    nama_produk, 
    AVG(biaya_produksi) 
FROM 
    products
GROUP BY 
    nama_produk;
    
SELECT
    nama_produk,
    kategori,
    AVG(biaya_produksi) AS rata_biaya, max(biaya_produksi)
FROM
    products
GROUP BY
    nama_produk,
    kategori;
    
 SELECT
    order_id,
    customer_id,
    product_id,
    tanggal_penjualan,
    total_penjualan, AVG(total_penjualan) as rata_rata_penjualan, max(total_penjualan) as terbanyak
  FROM
    sales
  GROUP BY
	order_id,
    customer_id,
    product_id,
    tanggal_penjualan;
   
   -- ORDER BY
   
   SELECT *
     FROM
		 products
	ORDER BY kategori  desc;
	
   

#Muhammad Ramadhan Fathoni