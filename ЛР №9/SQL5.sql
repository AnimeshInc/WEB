SELECT dautov_user.firstname, 
  dautov_user.lastname, 
  dautov_user.patronomic, 
  dautov_gruppa.name
  FROM dautov_course

  INNER JOIN dautov_gruppa 
  ON dautov_course.special_id = dautov_gruppa.special_id 
  AND dautov_course.name = "Мультимедиа технологии" 

  INNER JOIN dautov_graduate 
  ON dautov_course.course_id = dautov_graduate.course_id 

  INNER JOIN dautov_user 
  ON dautov_graduate.user_id = dautov_user.user_id 
  
