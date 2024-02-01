-- This will update the photos of the houses
UPDATE houses_pictures 
SET photo_url = 'https://randomuser.me/api/portraits/women/27.jpg'
WHERE photo_id = 2

-- This will delete the photos of the houses
DELETE FROM houses_pictures  
WHERE photo_id = 2