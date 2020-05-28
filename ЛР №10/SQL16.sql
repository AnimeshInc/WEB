SELECT dautov_special.name AS special,
  dautov_day.name AS day
  FROM dautov_day

  INNER JOIN dautov_graduate_time
    ON dautov_day.day_id = dautov_graduate_time.day_id 
    AND dautov_day.name = "Вторник"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  INNER JOIN dautov_course
    ON dautov_graduate.course_id = dautov_course.course_id
  
  INNER JOIN dautov_special
    ON dautov_course.special_id = dautov_special.special_id