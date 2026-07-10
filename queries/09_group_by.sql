-- Count how many performances each stage hosts.
SELECT s.stage_name,
       COUNT(p.performance_id) AS total_performances
FROM Performances p
JOIN Stages s ON p.stage_id = s.stage_id
GROUP BY s.stage_name;

-- Calculate total vendor sales by category.
SELECT v.category,
       SUM(vs.sale_amount) AS total_revenue,
       SUM(vs.quantity) AS items_sold
FROM VendorSales vs
JOIN Vendors v ON vs.vendor_id = v.vendor_id
GROUP BY v.category;

-- Compute average ticket price by ticket type.
SELECT ticket_type,
       COUNT(*) AS attendee_count,
       AVG(ticket_price) AS average_price
FROM Attendees
GROUP BY ticket_type;
