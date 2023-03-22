-- Write a query to determine the top 5 artists whose songs appear in the Top 10 of the global_song_rank table the highest number of times.

```sql
SELECT a.artist_name,
  DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) as rank
FROM artists a
JOIN songs s ON a.artist_id = s.artist_id
JOIN global_song_rank gsr ON s.song_id = gsr.song_id
WHERE gsr.rank <= 10
GROUP BY a.artist_name
ORDER BY rank ASC
LIMIT 6;
```

Output;

	|artist_name | rank |
	| :---:      | :---:| 
	| Bad Bunny  |   1  |
  	| Ed Sheeran |   2  |
	| Adele	     |	 3  |
	| Lady Gaga  |	 3  |
	| Katy Perry |	 4  |
        | Drake	     |	 5  |



--Output show's ths top 5 artist names in ascending order along with their song appearances ranking 
--(not the number of song appearances, but the rank of who has the most appearances
