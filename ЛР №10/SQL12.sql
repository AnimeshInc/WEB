SELECT dautov_user.firstname,
  dautov_user.lastname,
  dautov_user.patronomic,
  dautov_gender.name AS gender,
  dautov_lesson_num.time_lesson AS time
  FROM dautov_lesson_num

  INNER JOIN dautov_graduate_time
    ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id 
    AND dautov_lesson_num.time_lesson >"10:30" 
    AND dautov_lesson_num.time_lesson <"18:30"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.course_id 
  
  INNER JOIN dautov_gruppa
    ON dautov_graduate.gruppa_id = dautov_gruppa.gruppa_id 
  
  INNER JOIN dautov_student
    ON dautov_gruppa.gruppa_id = dautov_student.gruppa_id 
  
  INNER JOIN dautov_user
    ON dautov_student.user_id = dautov_user.user_id 
  
  INNER JOIN dautov_gender
    ON dautov_user.gender_id = dautov_gender.gender_id 
    AND (dautov_gender.name = "Женский")
  
