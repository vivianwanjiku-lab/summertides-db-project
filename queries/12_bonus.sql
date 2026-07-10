-- Identify the top-selling vendor by total revenue.
WITH vendor_totals AS (
  SELECT v.vendor_name,
         SUM(vs.sale_amount) AS total_revenue
  FROM VendorSales vs
  JOIN Vendors v ON vs.vendor_id = v.vendor_id
  GROUP BY v.vendor_name
)
SELECT vendor_name, total_revenue
FROM vendor_totals
ORDER BY total_revenue DESC
LIMIT 1;

-- Determine which stage has the most scheduled performances.
SELECT s.stage_name,
       COUNT(p.performance_id) AS performance_count
FROM Performances p
JOIN Stages s ON p.stage_id = s.stage_id
GROUP BY s.stage_name
ORDER BY performance_count DESC
LIMIT 1;

-- Report average ticket price and VIP count for attendance planning.
SELECT AVG(ticket_price) AS average_ticket_price,
       SUM(CASE WHEN ticket_type = 'VIP' THEN 1 ELSE 0 END) AS vip_attendee_count
FROM Attendees;
