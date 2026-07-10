-- View of VIP and backstage attendees for access planning.
CREATE VIEW IF NOT EXISTS View_VIPAttendees AS
SELECT attendee_id, first_name, last_name, email, ticket_type, ticket_price
FROM Attendees
WHERE ticket_type IN ('VIP', 'Backstage');

-- View of stage schedules joined to artist names.
CREATE VIEW IF NOT EXISTS View_StageSchedule AS
SELECT p.performance_id,
       a.artist_name,
       s.stage_name,
       p.performance_day,
       p.start_time,
       p.end_time,
       CASE WHEN p.is_headliner = 1 THEN 'Headliner' ELSE 'Supporting act' END AS show_role
FROM Performances p
JOIN Artists a ON p.artist_id = a.artist_id
JOIN Stages s ON p.stage_id = s.stage_id;

-- View summarizing total revenue by vendor.
CREATE VIEW IF NOT EXISTS View_VendorRevenue AS
SELECT v.vendor_id,
       v.vendor_name,
       v.category,
       SUM(vs.sale_amount) AS total_revenue,
       SUM(vs.quantity) AS total_items_sold
FROM Vendors v
LEFT JOIN VendorSales vs ON v.vendor_id = vs.vendor_id
GROUP BY v.vendor_id;

-- View listing sponsors, stages, and sponsorship share.
CREATE VIEW IF NOT EXISTS View_SponsorStages AS
SELECT sp.sponsor_id,
       sp.sponsor_name,
       st.stage_name,
       ss.sponsorship_share
FROM StageSponsors ss
JOIN Sponsors sp ON ss.sponsor_id = sp.sponsor_id
JOIN Stages st ON ss.stage_id = st.stage_id;
