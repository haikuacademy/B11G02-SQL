-- This will insert a new picture of the property
INSERT INTO houses_pictures (photo_url, house_id)
VALUES ('https://randomuser.me/api/portraits/men/12.jpg', 1)

-- This will update the photos of the houses
UPDATE houses_pictures 
SET photo_url = 'https://randomuser.me/api/portraits/women/27.jpg'
WHERE photo_id = 2

-- This will delete the photos of the houses
DELETE FROM houses_pictures  
WHERE photo_id = 2