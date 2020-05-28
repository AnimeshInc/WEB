SELECT dautov_special.name AS special,
  dautov_lesson_num.time_lesson AS time,
  dautov_day.name AS day,
  dautov_course.name AS predmet
FROM dautov_lesson_num 

  LEFT JOIN dautov_graduate_time 
    ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id 
    AND dautov_lesson_num.time_lesson >"15:00" 
    AND dautov_lesson_num.time_lesson <"18:00" 

  LEFT JOIN dautov_day 
    ON dautov_graduate_time.day_id = dautov_day.day_id 

  LEFT JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  LEFT JOIN dautov_course 
    ON dautov_graduate.course_id = dautov_course.course_id 
  
  LEFT JOIN dautov_special 
    ON dautov_course.special_id = dautov_special.special_id

  WHERE dautov_course.name IS NULL 
    AND dautov_day.name = "Суббота"
    OR dautov_day.name = "Четверг"