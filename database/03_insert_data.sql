-- Insert realistic sample data for SummerTides festival.
INSERT INTO Artists (artist_name, genre, origin_country, primary_contact_email, performance_style) VALUES
('Azure Wave', 'Afro-pop', 'Kenya', 'booking@azurewave.africa', 'Live band set'),
('DJ Tides', 'Electronic', 'South Africa', 'contact@djtides.za', 'DJ performance'),
('The Marley Twins', 'Reggae', 'Jamaica', 'hello@marleytwins.jm', 'Acoustic reggae'),
('Ocean Canvas', 'Indie Rock', 'Uganda', 'info@oceancanvas.ug', 'Full band'),
('Palm Harmony', 'Jazz Fusion', 'Tanzania', 'bookings@palmharmony.tz', 'Smooth lounge set'),
('Sunset Echo', 'House', 'Nigeria', 'sunset@echo.ng', 'Festival dance set');

INSERT INTO Stages (stage_name, capacity, location) VALUES
('Coral Stage', 2500, 'Beachfront west'),
('Sands Arena', 1800, 'Central plaza'),
('Lagoon Lounge', 1200, 'North cove'),
('Dune Deck', 900, 'South promenade');

INSERT INTO Sponsors (sponsor_name, sponsorship_level, contribution_amount, contact_email) VALUES
('WaveBank', 'Platinum', 50000, 'sponsor@wavebank.com'),
('Coconut Drinks', 'Gold', 25000, 'marketing@coconutdrinks.co'),
('Island Art Co', 'Silver', 15000, 'partners@islandart.co'),
('SunGlow Media', 'Bronze', 8000, 'events@sunglow.media'),
('Aqua Wellness', 'Silver', 12000, 'info@aquawellness.com');

INSERT INTO StageSponsors (stage_id, sponsor_id, sponsorship_share) VALUES
(1, 1, 50),
(1, 2, 30),
(2, 4, 100),
(3, 3, 100),
(4, 5, 100);

INSERT INTO Performances (artist_id, stage_id, performance_day, start_time, end_time, is_headliner, ticket_price) VALUES
(1, 1, 'Friday', '18:00', '19:15', 0, 35.00),
(2, 1, 'Friday', '20:00', '22:00', 1, 55.00),
(3, 2, 'Saturday', '17:30', '19:00', 0, 30.00),
(4, 2, 'Saturday', '20:00', '21:30', 1, 50.00),
(5, 3, 'Sunday', '16:00', '17:30', 0, 28.00),
(6, 3, 'Sunday', '18:00', '20:00', 1, 60.00),
(1, 4, 'Saturday', '12:00', '13:00', 0, 25.00),
(3, 4, 'Friday', '14:00', '15:30', 0, 22.00),
(5, 1, 'Sunday', '13:00', '14:00', 0, 24.00),
(2, 2, 'Sunday', '20:30', '22:30', 1, 58.00),
(4, 3, 'Friday', '15:45', '16:45', 0, 27.50),
(6, 4, 'Saturday', '22:30', '23:59', 1, 65.00);

INSERT INTO Attendees (first_name, last_name, email, phone, ticket_type, purchase_date, ticket_price, checked_in) VALUES
('Amina', 'Mwamba', 'amina.mwamba@example.com', '254700123456', 'VIP', '2026-06-10', 120.00, 1),
('David', 'Karanja', 'david.karanja@example.com', '254712345678', 'General', '2026-06-12', 65.00, 1),
('Fatima', 'Nyang''', 'fatima.nyang@example.com', '254798765432', 'Backstage', '2026-06-13', 180.00, 0),
('John', 'Otieno', 'john.otieno@example.com', '254733444555', 'Student', '2026-06-12', 40.00, 1),
('Grace', 'Musa', 'grace.musa@example.com', '254721998877', 'VIP', '2026-06-11', 120.00, 0),
('Leah', 'Kamau', 'leah.kamau@example.com', '254709887766', 'General', '2026-06-13', 65.00, 1),
('Omar', 'Saleh', 'omar.saleh@example.com', '254700556644', 'General', '2026-06-09', 65.00, 1),
('Sara', 'Wambui', 'sara.wambui@example.com', '254711223344', 'Backstage', '2026-06-14', 180.00, 0),
('Mark', 'Njoroge', 'mark.njoroge@example.com', '254722334455', 'VIP', '2026-06-12', 120.00, 1),
('Diana', 'Omondi', 'diana.omondi@example.com', '254733556677', 'General', '2026-06-10', 65.00, 1),
('James', 'Mwangi', 'james.mwangi@example.com', '254744556677', 'Student', '2026-06-13', 40.00, 0),
('Rita', 'Achieng', 'rita.achieng@example.com', '254755667788', 'General', '2026-06-14', 65.00, 0);

INSERT INTO Vendors (vendor_name, category, booth_number, contact_person, booth_rent) VALUES
('Tropical Bites', 'Food', 'F12', 'Moses Kimani', 900.00),
('Sea Breeze Drinks', 'Drink', 'D03', 'Nadia Hassan', 750.00),
('Festival Threads', 'Merch', 'M05', 'Kevin Ouma', 700.00),
('Coastal Canvas', 'Art', 'A02', 'Beatrice Ayot', 650.00),
('Island Smoothies', 'Drink', 'D08', 'Daniel Mutua', 800.00);

INSERT INTO VendorSales (vendor_id, sale_date, item_sold, quantity, sale_amount) VALUES
(1, '2026-07-05', 'Grilled fish taco', 120, 1800.00),
(1, '2026-07-06', 'Plantain fries', 90, 810.00),
(2, '2026-07-05', 'Fresh coconut water', 160, 1120.00),
(2, '2026-07-06', 'Mango cooler', 110, 990.00),
(3, '2026-07-05', 'Festival t-shirt', 75, 1875.00),
(3, '2026-07-06', 'Cap and poster bundle', 40, 760.00),
(4, '2026-07-05', 'Canvas prints', 28, 840.00),
(4, '2026-07-06', 'Custom sketches', 18, 540.00),
(5, '2026-07-05', 'Berry smoothie', 130, 1170.00),
(5, '2026-07-06', 'Protein shake', 95, 950.00);
