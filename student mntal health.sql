--how each gender contribute to the survey
SELECT [Choose your gender], COUNT([Choose your gender])
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Choose your gender];


-- COUNT OF DEPRESSED STUDENTS BY AGE
SELECT Age, COUNT(Age) AS Age_Count
FROM StudentMentalHealth.dbo.['Student Mental health$']
WHERE Age IS NOT NULL
GROUP BY Age
ORDER BY Age ASC;


-- DEPRESSION BY YEAR OF STUDY
SELECT [Your current year of Study], [Do you have Depression?],
	COUNT([Your current year of Study]) AS Counts
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Your current year of Study], [Do you have Depression?]
ORDER BY [Your current year of Study];


-- COURSE WITH THE MOST DEPRESSED STUDENTS
SELECT [What is your course?], [Do you have Depression?],
	COUNT([What is your course?]) AS Counts
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Do you have Depression?], [What is your course?]
ORDER BY Counts DESC;


-- EFFECT CGPA OF STUDENTS IN VARIOUS COURSES.
SELECT [What is your course?], [What is your CGPA?],
		[Do you have Depression?], COUNT([Do you have Depression?]) AS Counts
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [What is your course?], [What is your CGPA?], [Do you have Depression?]
ORDER BY Counts DESC;


-- HOW DOES CGPA CONTRIBUTE TO DEPRESSION LEVEL?
SELECT [What is your CGPA?], [Do you have Depression?], 
	COUNT([What is your CGPA?]) AS Depression_Count
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [What is your CGPA?], [Do you have Depression?]
ORDER BY [What is your CGPA?];



-- the year and cgpa effects on depression
SELECT [Your current year of Study], [What is your CGPA?], [Do you have Depression?], COUNT([Do you have Depression?]) AS Counts	
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Your current year of Study], [What is your CGPA?], [Do you have Depression?]
ORDER BY [Your current year of Study], [What is your CGPA?];



-- DOES MARITAL STATUS MATTER?
SELECT [Marital status], [Do you have Depression?], 
		COUNT([Do you have Depression?]) AS Counts
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Do you have Depression?], [Marital status]
ORDER BY [Do you have Depression?];



-- IS ANXIETY A FACTOR IN DEPRESSION-LEVEL IN YEAR 1 STUDENTS?
SELECT [Your current year of Study], [Do you have Anxiety?],
		COUNT([Your current year of Study])
FROM StudentMentalHealth.dbo.['Student Mental health$']
GROUP BY [Your current year of Study], [Do you have Anxiety?]
ORDER BY [Your current year of Study];

