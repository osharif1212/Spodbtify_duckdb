SELECT pid, UNNEST(tracks, recursive := true)
FROM '/Volumes/OmarPhotosVids/LEARN/spoDBTify/playlists01.parquet'