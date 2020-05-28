SELECT dautov_otdel.name AS otdel,
  dautov_lesson_num.time_lesson AS time,
  dautov_day.name AS day
FROM dautov_lesson_num 

  INNER JOIN dautov_graduate_time 
    ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id 
    AND dautov_lesson_num.time_lesson >"9:00" 
    AND dautov_lesson_num.time_lesson <"12:00" 

  INNER JOIN dautov_day 
    ON dautov_graduate_time.day_id = dautov_day.day_id 

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  INNER JOIN dautov_teacher 
    ON dautov_graduate.user_id = dautov_teacher.user_id 
  
  INNER JOIN dautov_otdel
    ON dautov_teacher.otdel_id = dautov_otdel.otdel_id

  WHERE (dautov_day.name = "Вторник")