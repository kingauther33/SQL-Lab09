USE master;
GO

ALTER DATABASE BTapVN09
SET SINGLE_USER
WITH ROLLBACK IMMEDIATE;
GO

DROP DATABASE BTapVN09
CREATE DATABASE BTapVN09
GO

USE BTapVN09;
GO

CREATE TABLE Class (
	ClassCode varchar(10) PRIMARY KEY,
	HeadTeacher varchar(30),
	Room varchar(30),
	TimeSlot char,
	CloseDate datetime
)
GO

CREATE TABLE Student (
	RollNo varchar(10) PRIMARY KEY,
	ClassCode varchar(10),
	FullName varchar(30),
	Male bit,
	BirthDate datetime,
	Address varchar(30),
	Provice char(2),
	Email varchar(30),
	CONSTRAINT fk_classcode FOREIGN KEY (ClassCode) REFERENCES dbo.Class(ClassCode)
)
GO

CREATE TABLE Subject (
	SubjectCode varchar(10) PRIMARY KEY,
	SubjectName varchar(40),
	WMark bit,
	PMark bit,
	WTest_per int,
	PTest_per int
)
GO

CREATE TABLE Mark (
	RollNo varchar(10),
	SubjectCode varchar(10),
	WMark float,
	PMark float,
	Mark float,
	CONSTRAINT fk_rollno FOREIGN KEY (RollNo) REFERENCES dbo.Student(RollNo),
	CONSTRAINT fk_subjectcode FOREIGN KEY (SubjectCode) REFERENCES dbo.Subject(SubjectCode)
)
GO

INSERT INTO dbo.Class
(
    ClassCode,
    HeadTeacher,
    Room,
    TimeSlot,
    CloseDate
)
VALUES
(
    'T2004M', -- ClassCode - varchar
    'Dang Kim Thi', -- HeadTeacher - varchar
    '207', -- Room - varchar
    'M', -- TimeSlot - char
    '2020-12-24 10:26:18' -- CloseDate - datetime
),

(
    'T2004A', -- ClassCode - varchar
    'Dang Kim Thi', -- HeadTeacher - varchar
    '208', -- Room - varchar
    'A', -- TimeSlot - char
    '2020-12-25 10:26:18' -- CloseDate - datetime
),

(
    'T2002M', -- ClassCode - varchar
    'Dang Kim Thi', -- HeadTeacher - varchar
    '210', -- Room - varchar
    'M', -- TimeSlot - char
    '2020-12-10 10:26:18' -- CloseDate - datetime
),

(
    'T2003N', -- ClassCode - varchar
    'Nguyen Tuan', -- HeadTeacher - varchar
    '206', -- Room - varchar
    'A', -- TimeSlot - char
    '2020-12-05 10:26:18' -- CloseDate - datetime
),

(
    'T2004N', -- ClassCode - varchar
    'Dang Kim Thi', -- HeadTeacher - varchar
    '209', -- Room - varchar
    'N', -- TimeSlot - char
    '2020-12-30 10:26:18' -- CloseDate - datetime
)

INSERT INTO dbo.Student
(
    RollNo,
    ClassCode,
    FullName,
    Male,
    BirthDate,
    Address,
    Provice,
    Email
)
VALUES
(
    'A00501', -- RollNo - varchar
    'T2004M', -- ClassCode - varchar
    'Doan Thi Thu', -- FullName - varchar
    0, -- Male - bit
    '1999-11-07 10:28:39', -- BirthDate - datetime
    '100 Hang Dau', -- Address - varchar
    'HN', -- Provice - char
    'dtthut2004m@fpt.edu.vn' -- Email - varchar
),

(
    'A00505', -- RollNo - varchar
    'T2004A', -- ClassCode - varchar
    'Dinh Van Toan', -- FullName - varchar
    1, -- Male - bit
    '1999-11-11 10:28:39', -- BirthDate - datetime
    '100 Hang Thung', -- Address - varchar
    'HN', -- Provice - char
    'dvtoant2004a@fpt.edu.vn' -- Email - varchar
),

(
    'A00302', -- RollNo - varchar
    'T2003N', -- ClassCode - varchar
    'Nguyen Thi Thanh', -- FullName - varchar
    0, -- Male - bit
    '1998-08-20 10:28:39', -- BirthDate - datetime
    '100 Hang Manh', -- Address - varchar
    'SG', -- Provice - char
    'ntthanht2003n@fpt.edu.vn' -- Email - varchar
),

(
    'A00106', -- RollNo - varchar
    'T2002M', -- ClassCode - varchar
    'Tran Cat Tuong', -- FullName - varchar
    1, -- Male - bit
    '1997-10-10 10:28:39', -- BirthDate - datetime
    '100 Hang Than', -- Address - varchar
    'DN', -- Provice - char
    'tctuongt2002m@fpt.edu.vn' -- Email - varchar
),

(
    'A00510', -- RollNo - varchar
    'T2004N', -- ClassCode - varchar
    'Tran Thi Nhung', -- FullName - varchar
    0, -- Male - bit
    '1999-05-12 10:28:39', -- BirthDate - datetime
    '100 Hang Bac', -- Address - varchar
    'QN', -- Provice - char
    'ttnhungt2004n@fpt.edu.vn' -- Email - varchar
)

INSERT INTO dbo.Subject
(
    SubjectCode,
    SubjectName,
    WMark,
    PMark,
    WTest_per,
    PTest_per
)
VALUES
(
    'EPC', -- SubjectCode - varchar
    'Elementary Programming With C', -- SubjectName - varchar
    1, -- WMark - bit
    1, -- PMark - bit
    1, -- WTest_per - int
    2 -- PTest_per - int
),

(
    'Java1', -- SubjectCode - varchar
    'Learning Java', -- SubjectName - varchar
    1, -- WMark - bit
    1, -- PMark - bit
    1, -- WTest_per - int
    2 -- PTest_per - int
),

(
    'BNGW', -- SubjectCode - varchar
    'Building Next Generation Websites', -- SubjectName - varchar
    1, -- WMark - bit
    1, -- PMark - bit
    1, -- WTest_per - int
    2 -- PTest_per - int
),

(
    'BSJ', -- SubjectCode - varchar
    'BootStrap and jQuery', -- SubjectName - varchar
    1, -- WMark - bit
    1, -- PMark - bit
    1, -- WTest_per - int
    2 -- PTest_per - int
),

(
    'ML&JSON', -- SubjectCode - varchar
    'Markup Language and JSON', -- SubjectName - varchar
    1, -- WMark - bit
    1, -- PMark - bit
    1, -- WTest_per - int
    2 -- PTest_per - int
)

INSERT INTO dbo.Mark
(
    RollNo,
    SubjectCode,
    WMark,
    PMark,
    Mark
)
VALUES
(
    'A00106', -- RollNo - varchar
    'BNGW', -- SubjectCode - varchar
    40, -- WMark - float
    60, -- PMark - float
    58 -- Mark - float
),

(
    'A00302', -- RollNo - varchar
    'ML&JSON', -- SubjectCode - varchar
    60, -- WMark - float
    80, -- PMark - float
    73 -- Mark - float
),

(
    'A00501', -- RollNo - varchar
    'Java1', -- SubjectCode - varchar
    70, -- WMark - float
    95, -- PMark - float
    87 -- Mark - float
),

(
    'A00505', -- RollNo - varchar
    'EPC', -- SubjectCode - varchar
    50, -- WMark - float
    70, -- PMark - float
    63 -- Mark - float
),

(
    'A00510', -- RollNo - varchar
    'BSJ', -- SubjectCode - varchar
    65, -- WMark - float
    85, -- PMark - float
    78 -- Mark - float
),

(
    'A00106', -- RollNo - varchar
    'Java1', -- SubjectCode - varchar
    50, -- WMark - float
    50, -- PMark - float
    50 -- Mark - float
)

DROP VIEW IF EXISTS AtLeastTwo
CREATE VIEW AtLeastTwo AS
	SELECT s.FullName AS HocSinhDaThi2Mon, s2.SubjectName, m.Mark FROM dbo.Mark m
	INNER JOIN dbo.Student s ON m.RollNo = s.RollNo
	INNER JOIN dbo.Subject s2 ON m.SubjectCode = s2.SubjectCode
	WHERE s.RollNo IN 
	(SELECT m2.RollNo FROM dbo.Mark m2
	 GROUP BY m2.RollNo
	 HAVING COUNT(m2.RollNo) >= 2)
SELECT * FROM dbo.AtLeastTwo alt

DROP VIEW IF EXISTS FailedStudents
CREATE VIEW FailedStudents AS
	SELECT s.FullName AS FailedStudents FROM dbo.Mark m
	INNER JOIN dbo.Student s ON m.RollNo = s.RollNo
	WHERE m.Mark <= 70
	GROUP BY s.FullName
SELECT * FROM dbo.FailedStudents fs

DROP VIEW IF EXISTS TimedStudents
CREATE VIEW TimedStudents AS
	SELECT s.FullName FROM dbo.Student s
	INNER JOIN dbo.Class c ON s.ClassCode = c.ClassCode
	WHERE c.TimeSlot = 'M'
SELECT * FROM dbo.TimedStudents ts

DROP VIEW IF EXISTS SuccesfulTeachers
CREATE VIEW SuccesfulTeachers AS
	SELECT c.HeadTeacher AS SuccessfulTeachers FROM dbo.Class c
	INNER JOIN dbo.Student s ON c.ClassCode = s.ClassCode
	INNER JOIN dbo.Mark m ON s.RollNo = m.RollNo
	WHERE (m.SubjectCode IN
	(SELECT m2.SubjectCode FROM dbo.Mark m2
	 WHERE m2.Mark >= 70))
	GROUP BY c.HeadTeacher
	HAVING COUNT(c.HeadTeacher) >= 2
SELECT * FROM dbo.SuccesfulTeachers st

DROP VIEW IF EXISTS PassEPC
CREATE VIEW PassEPC AS
	SELECT s.FullName TenSinhVienQuaMon, s.ClassCode, c.HeadTeacher, m.Mark FROM dbo.Student s
	INNER JOIN dbo.Mark m ON s.RollNo = m.RollNo
	INNER JOIN dbo.Class c ON s.ClassCode = c.ClassCode
	WHERE m.Mark >= 50 AND m.SubjectCode = 'EPC'
SELECT * FROM dbo.PassEPC fe