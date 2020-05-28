SELECT * FROM dautov_course

LEFT OUTER JOIN dautov_graduate 
  ON dautov_course.course_id = dautov_graduate.course_id

LEFT OUTER JOIN dautov_user
  ON dautov_graduate.user_id = dautov_user.user_id
   
WHERE dautov_graduate.course_id IS NULL
