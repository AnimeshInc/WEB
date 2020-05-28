-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 19 2020 г., 16:33
-- Версия сервера: 8.0.19
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `college`
--

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_classroom`
--

CREATE TABLE `dautov_classroom` (
  `classroom_id` int NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_classroom`
--

INSERT INTO `dautov_classroom` (`classroom_id`, `name`) VALUES
(1, 'WB'),
(2, 'AD'),
(3, 'FTE'),
(4, 'VDG'),
(5, 'XZF');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_course`
--

CREATE TABLE `dautov_course` (
  `course_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `special_id` int NOT NULL,
  `hours` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_course`
--

INSERT INTO `dautov_course` (`course_id`, `name`, `special_id`, `hours`) VALUES
(1, 'Основы алгоритмизации', 1, 90),
(2, 'Электротехника', 3, 106),
(3, 'Основы алгоритмизации', 5, 52),
(4, 'Мультимедиа технологии', 1, 36),
(5, 'Техническая механика', 6, 96),
(6, 'Промышленная электротехника', 4, 108),
(7, 'Автоматизированные информационные системы', 1, 86);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_day`
--

CREATE TABLE `dautov_day` (
  `day_id` tinyint NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_day`
--

INSERT INTO `dautov_day` (`day_id`, `name`) VALUES
(1, 'Понедельник'),
(2, 'Вторник'),
(3, 'Среда'),
(4, 'Четверг'),
(5, 'Пятница'),
(6, 'Суббота'),
(7, 'Воскресенье');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_gender`
--

CREATE TABLE `dautov_gender` (
  `gender_id` tinyint NOT NULL,
  `name` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_gender`
--

INSERT INTO `dautov_gender` (`gender_id`, `name`) VALUES
(1, 'Мужской'),
(2, 'Женский');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_graduate`
--

CREATE TABLE `dautov_graduate` (
  `graduate_id` int NOT NULL,
  `gruppa_id` int NOT NULL,
  `course_id` int NOT NULL,
  `user_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_graduate`
--

INSERT INTO `dautov_graduate` (`graduate_id`, `gruppa_id`, `course_id`, `user_id`) VALUES
(1, 4, 2, 4),
(2, 5, 6, 3),
(3, 4, 6, 1),
(4, 1, 7, 1),
(5, 2, 1, 5),
(6, 1, 3, 3),
(7, 7, 3, 3),
(8, 3, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_graduate_time`
--

CREATE TABLE `dautov_graduate_time` (
  `graduate_time_id` int NOT NULL,
  `graduate_id` int NOT NULL,
  `day_id` tinyint NOT NULL,
  `lesson_num_id` int NOT NULL,
  `classroom_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_graduate_time`
--

INSERT INTO `dautov_graduate_time` (`graduate_time_id`, `graduate_id`, `day_id`, `lesson_num_id`, `classroom_id`) VALUES
(1, 2, 7, 3, 4),
(2, 2, 1, 2, 2),
(3, 5, 5, 3, 2),
(4, 8, 5, 1, 3),
(5, 7, 2, 2, 1),
(6, 3, 7, 2, 5),
(7, 1, 6, 2, 1),
(8, 2, 7, 3, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_gruppa`
--

CREATE TABLE `dautov_gruppa` (
  `gruppa_id` int NOT NULL,
  `name` varchar(20) NOT NULL,
  `special_id` int NOT NULL,
  `date_begin` date NOT NULL,
  `date_end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_gruppa`
--

INSERT INTO `dautov_gruppa` (`gruppa_id`, `name`, `special_id`, `date_begin`, `date_end`) VALUES
(1, '101 ИС', 1, '2016-09-01', '2020-07-01'),
(2, '102 АС', 3, '2016-09-01', '2020-07-01'),
(3, '302 ИС', 1, '2014-09-01', '2018-07-01'),
(4, '302 АС', 3, '2014-09-01', '2018-07-01'),
(5, '202 С', 6, '2015-09-01', '2019-07-01'),
(6, '404 П', 5, '2014-09-01', '2017-07-01'),
(7, '303 ЭЛ', 4, '2014-09-01', '2018-07-01');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_lesson_num`
--

CREATE TABLE `dautov_lesson_num` (
  `lesson_num_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `time_lesson` time NOT NULL,
  `year_lesson` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_lesson_num`
--

INSERT INTO `dautov_lesson_num` (`lesson_num_id`, `name`, `time_lesson`, `year_lesson`) VALUES
(1, 'Математика', '13:20:00', 2002),
(2, 'Программирование', '14:00:00', 2003),
(3, 'Химия', '15:30:00', 2002);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_otdel`
--

CREATE TABLE `dautov_otdel` (
  `otdel_id` smallint NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_otdel`
--

INSERT INTO `dautov_otdel` (`otdel_id`, `name`) VALUES
(1, 'Информационные системы'),
(2, 'Технические специальности'),
(3, 'Автоматизация и управление');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_special`
--

CREATE TABLE `dautov_special` (
  `special_id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_special`
--

INSERT INTO `dautov_special` (`special_id`, `name`, `otdel_id`) VALUES
(1, 'Информационные системы', 1),
(2, 'Нефтегазовое дело', 2),
(3, 'Автоматизация и управление', 3),
(4, 'Электроснабжение', 3),
(5, 'Программное обеспечение ВТ и ПО', 1),
(6, 'Строительство и эксплуатация зданий и сооружений', 2);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_student`
--

CREATE TABLE `dautov_student` (
  `user_id` bigint NOT NULL,
  `gruppa_id` int NOT NULL,
  `num_zach` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_student`
--

INSERT INTO `dautov_student` (`user_id`, `gruppa_id`, `num_zach`) VALUES
(6, 1, 'К1020'),
(7, 2, 'А5292'),
(8, 2, 'В8578'),
(9, 5, 'Р5285'),
(10, 4, 'Ф5285'),
(11, 1, 'К7485'),
(12, 3, 'А2585');

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_teacher`
--

CREATE TABLE `dautov_teacher` (
  `user_id` bigint NOT NULL,
  `otdel_id` smallint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_teacher`
--

INSERT INTO `dautov_teacher` (`user_id`, `otdel_id`) VALUES
(1, 1),
(2, 1),
(3, 2),
(5, 2),
(4, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `dautov_user`
--

CREATE TABLE `dautov_user` (
  `user_id` bigint NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `patronomic` varchar(50) NOT NULL,
  `login` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `gender_id` tinyint NOT NULL,
  `birthday` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `dautov_user`
--

INSERT INTO `dautov_user` (`user_id`, `lastname`, `firstname`, `patronomic`, `login`, `pass`, `gender_id`, `birthday`) VALUES
(1, 'Иванов', 'Иван', 'Иванович', 'fsdf', '1234', 1, '1975-05-25'),
(2, 'Петров', 'Петр', 'Петрович', 'wert', '1234', 1, '1980-08-06'),
(3, 'Козлов', 'Иван', 'Афанасьевич', 'dbf', '1234', 1, '1985-04-15'),
(4, 'Чурюмова', 'Кристина', 'Федоровна', 'cgfhth', '1234', 2, '1990-05-20'),
(5, 'Васильев', 'Феофан', 'Александрович', 'fdgv', '1234', 1, '1991-01-13'),
(6, 'Федорова', 'Милана', 'Андреевна', 'zcz', '1234', 2, '1998-04-15'),
(7, 'Нуржанов', 'Нуржан', 'Нуржанович', 'qadsa', '1234', 1, '1999-09-18'),
(8, 'Канатов', 'Канат', 'Канатович', 'ukl', '1234', 1, '1999-07-07'),
(9, 'Золотая', 'Ирина', 'Кайратовна', 'yunb', '1234', 2, '2000-09-14'),
(10, 'Серая', 'Арина', 'Радионовна', 'btfrdrfg', '1234', 2, '2001-10-29'),
(11, 'Петухов', 'Виталий', 'Фадеевич', 'gvxdaA', '1234', 1, '2000-02-20'),
(12, 'Котова', 'Аурелия', 'Ароновна', 'Zawd', '1234', 2, '2002-12-19');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `dautov_classroom`
--
ALTER TABLE `dautov_classroom`
  ADD PRIMARY KEY (`classroom_id`);

--
-- Индексы таблицы `dautov_course`
--
ALTER TABLE `dautov_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `fk_special_id` (`special_id`);

--
-- Индексы таблицы `dautov_day`
--
ALTER TABLE `dautov_day`
  ADD PRIMARY KEY (`day_id`);

--
-- Индексы таблицы `dautov_gender`
--
ALTER TABLE `dautov_gender`
  ADD PRIMARY KEY (`gender_id`);

--
-- Индексы таблицы `dautov_graduate`
--
ALTER TABLE `dautov_graduate`
  ADD PRIMARY KEY (`graduate_id`),
  ADD KEY `fk_gruppa_id` (`gruppa_id`),
  ADD KEY `fk_course_id` (`course_id`),
  ADD KEY `fk_user_id` (`user_id`);

--
-- Индексы таблицы `dautov_graduate_time`
--
ALTER TABLE `dautov_graduate_time`
  ADD PRIMARY KEY (`graduate_time_id`),
  ADD KEY `fk_graduate_id` (`graduate_id`),
  ADD KEY `fk_day_id` (`day_id`),
  ADD KEY `fk_lesson_num_id` (`lesson_num_id`),
  ADD KEY `fk_classroom_id` (`classroom_id`);

--
-- Индексы таблицы `dautov_gruppa`
--
ALTER TABLE `dautov_gruppa`
  ADD PRIMARY KEY (`gruppa_id`),
  ADD KEY `fk_special_id` (`special_id`);

--
-- Индексы таблицы `dautov_lesson_num`
--
ALTER TABLE `dautov_lesson_num`
  ADD PRIMARY KEY (`lesson_num_id`);

--
-- Индексы таблицы `dautov_otdel`
--
ALTER TABLE `dautov_otdel`
  ADD PRIMARY KEY (`otdel_id`);

--
-- Индексы таблицы `dautov_special`
--
ALTER TABLE `dautov_special`
  ADD PRIMARY KEY (`special_id`),
  ADD KEY `fk_otdel_id` (`otdel_id`);

--
-- Индексы таблицы `dautov_student`
--
ALTER TABLE `dautov_student`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_gruppa_id` (`gruppa_id`) USING BTREE;

--
-- Индексы таблицы `dautov_teacher`
--
ALTER TABLE `dautov_teacher`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_otdel_id` (`otdel_id`);

--
-- Индексы таблицы `dautov_user`
--
ALTER TABLE `dautov_user`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `fk_gender_id` (`gender_id`) USING BTREE;

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `dautov_classroom`
--
ALTER TABLE `dautov_classroom`
  MODIFY `classroom_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT для таблицы `dautov_course`
--
ALTER TABLE `dautov_course`
  MODIFY `course_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `dautov_day`
--
ALTER TABLE `dautov_day`
  MODIFY `day_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `dautov_gender`
--
ALTER TABLE `dautov_gender`
  MODIFY `gender_id` tinyint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `dautov_graduate`
--
ALTER TABLE `dautov_graduate`
  MODIFY `graduate_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `dautov_graduate_time`
--
ALTER TABLE `dautov_graduate_time`
  MODIFY `graduate_time_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `dautov_gruppa`
--
ALTER TABLE `dautov_gruppa`
  MODIFY `gruppa_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `dautov_lesson_num`
--
ALTER TABLE `dautov_lesson_num`
  MODIFY `lesson_num_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT для таблицы `dautov_otdel`
--
ALTER TABLE `dautov_otdel`
  MODIFY `otdel_id` smallint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `dautov_special`
--
ALTER TABLE `dautov_special`
  MODIFY `special_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `dautov_user`
--
ALTER TABLE `dautov_user`
  MODIFY `user_id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `dautov_course`
--
ALTER TABLE `dautov_course`
  ADD CONSTRAINT `Breder_course_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `dautov_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_graduate`
--
ALTER TABLE `dautov_graduate`
  ADD CONSTRAINT `Breder_graduate_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `dautov_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `Breder_graduate_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `dautov_course` (`course_id`),
  ADD CONSTRAINT `Breder_graduate_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `dautov_teacher` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_graduate_time`
--
ALTER TABLE `dautov_graduate_time`
  ADD CONSTRAINT `Breder_graduate_time_ibfk_1` FOREIGN KEY (`graduate_id`) REFERENCES `dautov_graduate` (`graduate_id`),
  ADD CONSTRAINT `Breder_graduate_time_ibfk_2` FOREIGN KEY (`day_id`) REFERENCES `dautov_day` (`day_id`),
  ADD CONSTRAINT `Breder_graduate_time_ibfk_3` FOREIGN KEY (`lesson_num_id`) REFERENCES `dautov_lesson_num` (`lesson_num_id`),
  ADD CONSTRAINT `Breder_graduate_time_ibfk_4` FOREIGN KEY (`classroom_id`) REFERENCES `dautov_classroom` (`classroom_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_gruppa`
--
ALTER TABLE `dautov_gruppa`
  ADD CONSTRAINT `Breder_gruppa_ibfk_1` FOREIGN KEY (`special_id`) REFERENCES `dautov_special` (`special_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_special`
--
ALTER TABLE `dautov_special`
  ADD CONSTRAINT `Breder_special_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `dautov_otdel` (`otdel_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_student`
--
ALTER TABLE `dautov_student`
  ADD CONSTRAINT `Breder_student_ibfk_1` FOREIGN KEY (`gruppa_id`) REFERENCES `dautov_gruppa` (`gruppa_id`),
  ADD CONSTRAINT `Breder_student_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `dautov_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_teacher`
--
ALTER TABLE `dautov_teacher`
  ADD CONSTRAINT `Breder_teacher_ibfk_1` FOREIGN KEY (`otdel_id`) REFERENCES `dautov_otdel` (`otdel_id`),
  ADD CONSTRAINT `Breder_teacher_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `dautov_user` (`user_id`);

--
-- Ограничения внешнего ключа таблицы `dautov_user`
--
ALTER TABLE `dautov_user`
  ADD CONSTRAINT `Breder_user_ibfk_1` FOREIGN KEY (`gender_id`) REFERENCES `dautov_gender` (`gender_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
