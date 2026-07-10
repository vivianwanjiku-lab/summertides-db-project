-- Select all festival artists.
SELECT artist_id, artist_name, genre, origin_country, performance_style
FROM Artists;

-- Select all stage locations and their capacity.
SELECT stage_id, stage_name, location, capacity
FROM Stages;

-- Select sponsor names and contribution levels.
SELECT sponsor_name, sponsorship_level, contribution_amount
FROM Sponsors;
