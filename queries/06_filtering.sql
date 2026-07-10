-- Find all VIP ticket holders.
SELECT first_name, last_name, email, ticket_type, ticket_price
FROM Attendees
WHERE ticket_type = 'VIP';

-- List performances scheduled for Saturday.
SELECT p.performance_id, a.artist_name, s.stage_name, p.start_time, p.end_time
FROM Performances p
JOIN Artists a ON p.artist_id = a.artist_id
JOIN Stages s ON p.stage_id = s.stage_id
WHERE p.performance_day = 'Saturday';

-- Find all drink vendors in the festival market.
SELECT vendor_id, vendor_name, category, booth_number
FROM Vendors
WHERE category = 'Drink';
