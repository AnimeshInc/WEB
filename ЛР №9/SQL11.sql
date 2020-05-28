SELECT * FROM dautov_special

LEFT JOIN dautov_course 
  ON dautov_special.special_id = dautov_course.special_id

WHERE dautov_course.course_id IS NULL