CREATE DATABASE lw10;
USE lw10;
CREATE TABLE faculty (
    id      INT AUTO_INCREMENT  NOT NULL,
    name    VARCHAR(255)        NOT NULL,
    PRIMARY KEY (id)
);
CREATE TABLE student_groups (
    group_id    INT AUTO_INCREMENT  NOT NULL,
    group_name  VARCHAR(255)        NOT NULL,
    id  INT                         NOT NULL,
    PRIMARY KEY (group_id),
    FOREIGN KEY (id) REFERENCES faculty(id)
);
CREATE TABLE students (
    student_id  INT AUTO_INCREMENT  NOT NULL,
    student_name  VARCHAR(255)      NOT NULL,
    age         INT                 NOT NULL,
    group_id    INT                 NOT NULL,
    PRIMARY KEY (student_id),
    FOREIGN KEY (group_id) REFERENCES student_groups(group_id) 
);

INSERT INTO faculty(name)
VALUES 
    ('FIiVT'),
    ('IMM'),
    ('FUP');
INSERT INTO student_groups(group_name, id)
VALUES
    ('PS-11', 1), 
    ('PS-12', 1),
    ('PS-13', 1),
    ('M-11', 2), 
    ('M-12', 2),
    ('M-13', 2),
    ('UK-11', 3), 
    ('UK-12', 3),
    ('UK-13', 3);
INSERT students(student_name, age, group_id)
VALUES
    ('Dasha', 17, 1),
    ('Alexei', 19, 2),
    ('Aleksandr', 20, 3),
    ('Kirill', 18, 1),
    ('Maksim', 18, 2),
    ('Konstantin', 19, 3),
    ('Nikolai', 20, 1),
    ('Viktoria', 21, 2),
    ('Maria', 18, 3),
    ('Timur', 21, 1),
    ('Anton', 19, 2),
    ('Katerina', 20, 3),
    ('Sveta', 20, 1),
    ('Alexei', 18, 2),
    ('Igor', 21, 3),
    
    ('Marat', 17, 4),
    ('Viktor', 19, 5),
    ('Svetlana', 20, 6),
    ('John', 18, 4),
    ('Ivan', 18, 5),
    ('Stepan', 19, 6),
    ('Oleg', 20, 4),
    ('Vladislav', 21, 5),
    ('Yuri', 18, 6),
    ('Mihail', 21, 4),
    ('Elena', 19, 5),
    ('Vladimir', 20, 6),
    ('Ivan', 20, 4),
    ('Artem', 18, 5),
    ('Anastasia', 21, 6),
    
    ('Viktoria', 17, 7),
    ('Dmitri', 19, 8),
    ('Kirill', 20, 9),
    ('Aleksandr', 18, 7),
    ('Anastasia', 18, 8),
    ('Mihail', 19, 9),
    ('Aleksandra', 20, 7),
    ('Denis', 21, 8),
    ('Konstantin', 18, 9),
    ('Andrey', 21, 7),
    ('Katerina', 19, 8),
    ('Gleb', 20, 9),
    ('Aleksandr', 20, 7),
    ('Alexei', 18, 8),
    ('Anton', 21, 9);

SELECT *
FROM
    students
WHERE
    age = 19;

SELECT *
FROM
    students JOIN student_groups ON students.group_id = student_groups.group_id
WHERE
    student_groups.group_name = 'PS-11';
    
SELECT 
    students.student_name AS "Name"
FROM
    students JOIN student_groups ON students.group_id = student_groups.group_id
    JOIN faculty ON student_groups.id = faculty.id    
WHERE
    faculty.name = "IMM";
    
SELECT
    students.student_name AS "Имя",
    faculty.name AS "Faculty",
    student_groups.group_name AS "Group"
FROM
    students JOIN student_groups ON students.group_id = student_groups.group_id
	JOIN faculty ON student_groups.id = faculty.id
WHERE
    students.student_id = 25;