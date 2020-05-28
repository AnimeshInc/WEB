SELECT dautov_gruppa.name,
  dautov_gruppa.date_begin,
  dautov_gruppa.date_end

  FROM dautov_special

  INNER JOIN dautov_gruppa 
    ON dautov_special.special_id = dautov_gruppa.special_id 
    AND dautov_special.name = "Информационные системы"
    