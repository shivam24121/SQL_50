SELECT DISTINCT(v.author_id) AS id
FROM 
Views v
where v.author_id=v.viewer_id
ORDER BY id;
