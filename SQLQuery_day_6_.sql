SELECT * FROM tbl_courses
SELECT * FROM tbl_departments
SELECT * FROM tbl_students
SELECT * FROM tbl_enrollement

--1.
SELECT s.FirstName, s.LastName
FROM tbl_students s
INNER JOIN tbl_enrollement e ON s.StudentID = e.StudentID
INNER JOIN tbl_courses c ON e.CourseID = c.CourseID
INNER JOIN tbl_departments d ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'CS'
GROUP BY s.StudentID, s.FirstName, s.LastName
HAVING COUNT(DISTINCT e.CourseID) > 0;

--2.

--3.
SELECT s.FirstName, s.LastName
FROM tbl_students s
INNER JOIN tbl_enrollement e ON s.StudentID = e.StudentID
INNER JOIN tbl_courses c ON e.CourseID = c.CourseID
GROUP BY s.FirstName, s.LastName
HAVING COUNT(DISTINCT c.DepartmentID) > 0;


--4
SELECT s.FirstName, s.LastName
FROM tbl_students s
INNER JOIN tbl_enrollement e ON s.StudentID = e.StudentID
INNER JOIN tbl_courses c ON e.CourseID = c.CourseID
INNER JOIN tbl_departments d ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'CS'
GROUP BY s.FirstName, s.LastName;

--5.
SELECT d.DepartmentName, c.CourseName, COUNT(DISTINCT s.StudentID) AS TotalStudents
FROM tbl_departments d
INNER JOIN tbl_courses c ON d.DepartmentID = c.DepartmentID
INNER JOIN tbl_enrollement e ON c.CourseID = e.CourseID
INNER JOIN tbl_students s ON e.StudentID = s.StudentID
GROUP BY d.DepartmentName, c.CourseName;


--6.
SELECT s.FirstName, s.LastName
FROM tbl_students s
INNER JOIN tbl_enrollement e ON s.StudentID = e.StudentID
INNER JOIN tbl_courses c ON e.CourseID = c.CourseID
INNER JOIN tbl_departments d ON c.DepartmentID = d.DepartmentID
WHERE s.FirstName = d.DepartmentName;


--7.


--8.
SELECT s.FirstName, s.LastName
FROM tbl_students s
WHERE s.StudentID
NOT IN 
(SELECT e.StudentID FROM tbl_enrollement e 
INNER JOIN tbl_courses c ON e.CourseID = c.CourseID 
INNER JOIN tbl_departments d ON c.DepartmentID = d.DepartmentID
WHERE d.DepartmentName = 'CS');


--9.
SELECT  top 1 d.DepartmentName, c.CourseName, MAX(e.EnrollmentDate) AS MostRecentEnrollmentDate
FROM tbl_departments d
INNER JOIN tbl_courses c ON d.DepartmentID = c.DepartmentID
INNER JOIN tbl_enrollement e ON c.CourseID = e.CourseID
GROUP BY d.DepartmentName, c.CourseName;


--10.