SELECT dautov_course.name,
  dautov_course.hours,
  dautov_special.name
  FROM dautov_otdel

  INNER JOIN dautov_special 
    ON dautov_otdel.otdel_id = dautov_special.otdel_id 
    AND dautov_otdel.name = "Технические специальности"

  INNER JOIN dautov_course 
    ON dautov_special.special_id = dautov_course.special_id