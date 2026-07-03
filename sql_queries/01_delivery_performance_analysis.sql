-- 1. Melihat rata-rata, waktu tercepat, dan waktu terlama pengiriman untuk pesanan yang sukses (delivered)
SELECT 
    order_status,
    COUNT(order_id) AS total_orders,
    ROUND(AVG(delivery_time_days), 1) AS avg_delivery_days,
    MIN(delivery_time_days) AS fastest_delivery_days,
    MAX(delivery_time_days) AS slowest_delivery_days
FROM 
    orders
WHERE 
    order_status = 'delivered'
GROUP BY 
    order_status;

-- 2. Mengidentifikasi pesanan yang durasi pengirimannya di atas rata-rata (Masalah Efisiensi)
SELECT 
    order_id,
    order_status,
    delivery_time_days
FROM 
    orders
WHERE 
    order_status = 'delivered'
    AND delivery_time_days > 12.1 -- Dengan rata - rata waktu pengirimian 12.1 Hari
ORDER BY 
    delivery_time_days DESC
LIMIT 10;