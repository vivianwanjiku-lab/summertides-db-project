-- Categorize ticket perks for festival attendees.
SELECT first_name,
       last_name,
       ticket_type,
       CASE
         WHEN ticket_type = 'VIP' THEN 'Premium access'
         WHEN ticket_type = 'Backstage' THEN 'All access pass'
         WHEN ticket_type = 'Student' THEN 'Discounted seat'
         ELSE 'General admission'
       END AS perk_description
FROM Attendees;

-- Label vendor sales revenue tiers.
SELECT v.vendor_name,
       item_sold,
       sale_amount,
       CASE
         WHEN sale_amount >= 1500 THEN 'High revenue'
         WHEN sale_amount >= 900 THEN 'Medium revenue'
         ELSE 'Starter revenue'
       END AS revenue_tier
FROM VendorSales vs
JOIN Vendors v ON vs.vendor_id = v.vendor_id;

-- Mark performances as headliner or support.
SELECT a.artist_name,
       stage_name,
       performance_day,
       start_time,
       CASE WHEN is_headliner = 1 THEN 'Headliner' ELSE 'Supporting act' END AS show_role
FROM Performances p
JOIN Artists a ON p.artist_id = a.artist_id
JOIN Stages s ON p.stage_id = s.stage_id;
