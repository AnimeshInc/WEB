SELECT dautov_user.firstname,
  dautov_user.lastname,
  dautov_user.patronomic,
  dautov_otdel.name AS otdel,
  dautov_day.name AS day
  FROM dautov_day

  INNER JOIN dautov_graduate_time
    ON dautov_day.day_id = dautov_graduate_time.day_id 
    AND dautov_day.name = "Суббота"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  INNER JOIN dautov_teacher
    ON dautov_graduate.user_id = dautov_teacher.user_id
  
  INNER JOIN dautov_otdel
    ON dautov_teacher.otdel_id = dautov_otdel.otdel_id

  INNER JOIN dautov_user
    ON dautov_teacher.user_id = dautov_user.user_id