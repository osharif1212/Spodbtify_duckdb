
  
    
    

    create  table
      "testspotify"."main"."Playlists__dbt_tmp"
  
    as (
      SELECT * Exclude('tracks') 
FROM '/Volumes/OmarPhotosVids/LEARN/spoDBTify/playlists01.parquet'
    );
  
  