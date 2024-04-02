#question 10:staff count
SELECT 
    s.store_id,
    st.store_name,
    st.state,
    COUNT(s.staff_id) AS staff_count
FROM 
    staff s
JOIN 
    stores st ON s.store_id = st.store_id
GROUP BY 
    s.store_id, st.store_name;