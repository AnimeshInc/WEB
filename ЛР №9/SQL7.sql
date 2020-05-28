SELECT dautov_otdel.name, COUNT(*) 
  FROM dautov_user
  
INNER JOIN dautov_student
  ON dautov_user.user_id = dautov_student.user_id 

INNER JOIN dautov_gruppa
  ON dautov_student.gruppa_id = dautov_gruppa.gruppa_id 

INNER JOIN dautov_special
  ON dautov_gruppa.special_id = dautov_special.special_id 

INNER JOIN dautov_otdel
  ON dautov_special.otdel_id = dautov_otdel.otdel_id 

GROUP BY dautov_otdel .otdel_id