SELECT dautov_day.name AS day,
  dautov_course.name AS predmet
  FROM dautov_day

  LEFT JOIN dautov_graduate_time
    ON dautov_day.day_id = dautov_graduate_time.day_id

  LEFT JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  LEFT JOIN dautov_course
    ON dautov_graduate.course_id = dautov_course.course_id 

  WHERE dautov_course.name IS NULL