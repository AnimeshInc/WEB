SELECT dautov_otdel.name AS otdel,
  dautov_course.name AS course,
  dautov_course.hours AS hours,
  dautov_special.name AS special,
  dautov_day.name AS day
  FROM dautov_otdel

  INNER JOIN dautov_special
    ON dautov_otdel.otdel_id = dautov_special.otdel_id 
    AND dautov_otdel.name = "Технические специальности"

  INNER JOIN dautov_course
    ON dautov_special.special_id = dautov_course.special_id

  INNER JOIN dautov_graduate
    ON dautov_course.course_id = dautov_graduate.course_id
  
  INNER JOIN dautov_graduate_time
    ON dautov_graduate.graduate_id = dautov_graduate_time.graduate_id

  INNER JOIN dautov_day
    ON dautov_graduate_time.day_id = dautov_day.day_id

  WHERE (dautov_day.name = "Среда" 
  OR dautov_day.name = "Пятница")