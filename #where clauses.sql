#where clauses
select *
from products
where kategori = 'pakaian';

select *
from sales
where total_penjualan > 1000;

select *
from customers
where tanggal_registrasi < '2024-03-01' #untuk melihat siapa saja customer yang registrasi sebelum 2024-03-01 dan dari kota jakarta
and kota = 'jakarta'
;

select *
from customers
where tanggal_registrasi < '2024-03-01' #untuk melihat siapa saja customer yang registrasi sebelum 2024-03-01 atau customer yang  dari kota jakarta
or kota = 'jakarta'
;

select *
from customers
where tanggal_registrasi < '2024-03-01' #untuk melihat siapa saja customer yang registrasi sebelum 2024-03-01 dan yang bukan customer yang  dari kota jakarta
or not kota = 'jakarta'
;