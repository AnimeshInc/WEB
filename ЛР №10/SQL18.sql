SELECT dautov_user.firstname,
  dautov_user.lastname,
  dautov_user.patronomic,
  dautov_gruppa.name AS gruppa,
  dautov_special.name AS special,
  dautov_course.hours
  FROM dautov_course

  INNER JOIN dautov_special
    ON dautov_course.special_id = dautov_special.special_id 
    AND dautov_course.hours > "12"

  INNER JOIN dautov_graduate
    ON dautov_course.course_id = dautov_graduate.course_id

  INNER JOIN dautov_gruppa
    ON dautov_graduate.gruppa_id = dautov_gruppa.gruppa_id

  INNER JOIN dautov_student
    ON dautov_gruppa.gruppa_id = dautov_student.gruppa_id
  
  INNER JOIN dautov_user
    ON dautov_student.user_id = dautov_user.user_id