SELECT dautov_day.name AS day, COUNT(*) AS predmetov
  FROM dautov_course
  
  INNER JOIN dautov_graduate
    ON dautov_course.course_id = dautov_graduate.course_id 
  
  INNER JOIN dautov_graduate_time 
    ON dautov_graduate.graduate_id = dautov_graduate_time.graduate_id 

  INNER JOIN dautov_day 
    ON dautov_graduate_time.day_id = dautov_day.day_id 

GROUP BY dautov_day.name