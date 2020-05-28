SELECT dautov_user.firstname,
  dautov_user.lastname,
  dautov_user.patronomic,
  dautov_day.name AS day
  FROM dautov_day

  INNER JOIN dautov_graduate_time
    ON dautov_day.day_id = dautov_graduate_time.day_id 
    AND dautov_day.name = "Пятница"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.graduate_id 

  JOIN dautov_gruppa
    ON dautov_graduate.gruppa_id = dautov_gruppa.gruppa_id 
  
  INNER JOIN dautov_student
    ON dautov_gruppa.gruppa_id = dautov_student.gruppa_id 
  
  INNER JOIN dautov_user
    ON dautov_student.user_id = dautov_user.user_id 