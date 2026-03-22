-- Count of Movies vs TV Shows
SELECT 
    type,
    COUNT(*) AS total_count
FROM netflix_cleaned
GROUP BY type;


-- Top 10 countries with most content
SELECT 
    country,
    COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;


-- Content added per year
SELECT 
    release_year,
    COUNT(*) AS total_content
FROM netflix_cleaned
GROUP BY release_year
ORDER BY release_year DESC;