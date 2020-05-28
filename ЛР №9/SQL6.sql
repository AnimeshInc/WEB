SELECT dautov_user.firstname, 
  dautov_user.lastname, 
  dautov_user.patronomic, 
  dautov_course.name,
  dautov_course.hours,
  dautov_gruppa.name
  FROM dautov_lesson_num

  INNER JOIN dautov_graduate_time
    ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id 
    AND dautov_lesson_num.time_lesson >"8:30" 
    AND dautov_lesson_num.time_lesson <"15:30"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.course_id 

  INNER JOIN dautov_course
    ON dautov_graduate.course_id = dautov_course.course_id 
  
  INNER JOIN dautov_user
    ON dautov_graduate.user_id = dautov_user.user_id 
  
  INNER JOIN dautov_gruppa
    ON dautov_graduate.gruppa_id = dautov_gruppa.gruppa_id 
  
