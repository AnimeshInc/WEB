SELECT dautov_otdel.name, 
  dautov_user.firstname, 
  dautov_user.lastname, 
  dautov_user.patronomic, 
  dautov_gender.name
  FROM dautov_otdel
  INNER JOIN dautov_teacher 
    ON dautov_otdel.otdel_id = dautov_teacher.otdel_id 
    AND dautov_otdel.name = "Информационные системы" 
  INNER JOIN dautov_user
    ON dautov_teacher.user_id = dautov_user.user_id 
  INNER JOIN dautov_gender
    ON dautov_user.gender_id = dautov_gender.gender_id