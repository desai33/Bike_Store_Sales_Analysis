#question 11: top performing staff

SELECT 
    s.store_id,
    st.store_name,
    CONCAT(s.first_name, ' ', s.last_name) AS staff_name,
    COUNT(o.order_id) AS order_count
FROM 
    staff s
JOIN 
    orders o ON s.staff_id = o.staff_id
JOIN 
    stores st ON s.store_id = st.store_id
GROUP BY 
    s.store_id, st.store_name, s.staff_id, CONCAT(s.first_name, ' ', s.last_name)
ORDER BY 
  order_count DESC;
