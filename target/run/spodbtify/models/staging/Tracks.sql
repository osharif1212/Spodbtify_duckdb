
  
    
    

    create  table
      "testspotify"."main"."Tracks__dbt_tmp"
  
    as (
      SELECT pid, UNNEST(tracks, recursive := true)
FROM '/Volumes/OmarPhotosVids/LEARN/spoDBTify/playlists01.parquet'
    );
  
  