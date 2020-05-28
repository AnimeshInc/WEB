SELECT * FROM dautov_course

LEFT JOIN dautov_graduate
  ON dautov_course.course_id = dautov_graduate.course_id

WHERE dautov_graduate.graduate_id IS NULL