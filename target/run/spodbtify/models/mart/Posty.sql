
  
    
    

    create  table
      "testspotify"."main"."Posty__dbt_tmp"
  
    as (
      WITH playlist_counts AS (
    SELECT COUNT(*) AS total_playlists
    FROM "testspotify"."main"."Playlists"
),

post_malone_playlists AS (
    SELECT COUNT(DISTINCT t.pid) AS post_malone_playlists
    FROM  "testspotify"."main"."Tracks" t
    WHERE t.artist_name ILIKE '%Post Malone%'
)

SELECT 
    *,   
    post_malone_playlists / total_playlists as post_malone_playlist_ratio
FROM playlist_counts, post_malone_playlists
    );
  
  