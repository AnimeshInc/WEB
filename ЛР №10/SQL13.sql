SELECT dautov_course.name AS predmet,
  dautov_lesson_num.time_lesson AS time
  FROM dautov_lesson_num

  INNER JOIN dautov_graduate_time
    ON dautov_lesson_num.lesson_num_id = dautov_graduate_time.lesson_num_id 
    AND dautov_lesson_num.time_lesson >"12:30" 
    AND dautov_lesson_num.time_lesson <"18:30"

  INNER JOIN dautov_graduate 
    ON dautov_graduate_time.graduate_id = dautov_graduate.course_id 

  INNER JOIN dautov_course
    ON dautov_graduate.course_id = dautov_course.course_id