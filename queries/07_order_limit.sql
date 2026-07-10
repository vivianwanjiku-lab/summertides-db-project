-- Show the top 5 most expensive tickets sold.
SELECT attendee_id, first_name, last_name, ticket_type, ticket_price
FROM Attendees
ORDER BY ticket_price DESC
LIMIT 5;

-- Order artists by genre and then by name.
SELECT artist_name, genre, origin_country
FROM Artists
ORDER BY genre, artist_name;

-- Display the 5 largest vendor sales by revenue.
SELECT v.vendor_name, item_sold, sale_date, sale_amount
FROM VendorSales vs
JOIN Vendors v ON vs.vendor_id = v.vendor_id
ORDER BY sale_amount DESC
LIMIT 5;
