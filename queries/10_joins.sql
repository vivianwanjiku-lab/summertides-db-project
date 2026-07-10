-- Join performances with artist and stage details.
SELECT p.performance_id,
       a.artist_name,
       s.stage_name,
       p.performance_day,
       p.start_time,
       p.end_time
FROM Performances p
JOIN Artists a ON p.artist_id = a.artist_id
JOIN Stages s ON p.stage_id = s.stage_id
ORDER BY p.performance_day, p.start_time;

-- Find sponsor coverage for each stage.
SELECT ss.stage_sponsor_id,
       st.stage_name,
       sp.sponsor_name,
       ss.sponsorship_share
FROM StageSponsors ss
JOIN Stages st ON ss.stage_id = st.stage_id
JOIN Sponsors sp ON ss.sponsor_id = sp.sponsor_id
ORDER BY st.stage_name, ss.sponsorship_share DESC;

-- Show vendor sales by vendor name.
SELECT v.vendor_name,
       vs.sale_date,
       vs.item_sold,
       vs.quantity,
       vs.sale_amount
FROM VendorSales vs
JOIN Vendors v ON vs.vendor_id = v.vendor_id
ORDER BY v.vendor_name, vs.sale_date;
