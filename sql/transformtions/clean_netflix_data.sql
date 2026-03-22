SELECT
    show_id,
    type,
    title,

    -- Handle missing director
    COALESCE(director, 'Unknown') AS director,

    -- Handle missing country
    COALESCE(country, 'Unknown') AS country,

    -- Convert date
    STR_TO_DATE(date_added, '%M %d, %Y') AS date_added,

    release_year,
    rating,

    -- Extract duration number only
    duration,

    listed_in AS genre,
    description

FROM netflix_titles;