SELECT dautov_gruppa.name, COUNT(*)
  FROM dautov_lesson_num

INNER JOIN dautov_graduate_time 
  ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id

INNER JOIN dautov_graduate 
  ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id

INNER JOIN dautov_gruppa 
  ON dautov_graduate.gruppa_id = dautov_gruppa.gruppa_id

GROUP BY dautov_gruppa.name