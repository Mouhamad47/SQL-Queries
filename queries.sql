
#Select all the degrees of all the instructors in this university
#--------------------------------------------------------------------
SELECT d.name FROM `degrees` d,`instructors` i, `faculties` f, `universities ` u
WHERE
d.instructors_id = i.id AND d.id = f.degrees_id AND f.universities_id = u.id AND u.name = 'AUB';

#Select the first name of the instructors who earned an MS degree in Computer Science
#----------------------------------------------------------------------------------------
SELECT i.first_name FROM `instructors` i, `degrees` d, `faculties` f 
WHERE
i.id = d.instructors_id AND d.id = f.degrees_id AND f.major = 'Computer Science' ;

#Delete all instructors
#---------------------------
DELETE FROM instructors ;

#Insert a new record to this table
#--------------------------------------

INSERT INTO instructors (first_name, last_name, birthday_date, uni_id, year_of_graduation)
VALUES('Mouhamad', 'Assaad','1/9/1999',512333,'3/7/2017');
