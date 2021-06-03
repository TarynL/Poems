-- step 1 What grades are stored in the database?
Select
id,
name
from Grade

-- step 2 What emotions may be associated with a poem?
Select
id,
name
from Emotion

-- step 3 How many poems are in the database?
select count(*) '# of poems'
from Poem

-- step 4 Sort authors alphabetically by name. What are the names of the top 76 authors?
select top 76 name, id
from Author
order by name

-- step 5 Starting with the above query, add the grade of each of the authors.
select top 76 a.name, g.name
from Author a
left join grade g on a.GradeId = g.Id
order by a.name  

-- step 6 Starting with the above query, add the recorded gender of each of the authors.
select top 76 a.name, g.name, gen.name
from Author a
left join grade g on a.GradeId = g.Id
left join gender gen on a.GenderId = gen.Id
order by a.name  

-- step 7 What is the total number of words in all poems in the database?
select sum(wordcount) 'total words', name
from poem

-- step 8 Which poem has the fewest characters?
select top 1 p.title, p.Charcount
from Poem p
order  by p.CharCount

-- step 9 How many authors are in the third grade?
select count(GradeId) '3rd grade authors'
from author
where gradeId = 3 

-- step 10 How many total authors are in the first through third grades?
select count(GradeId) '1st-3rd grade authors'
from author
where gradeId <= 3 

-- step 11 What is the total number of poems written by fourth graders?
select count(g.Id) '4th grade poems'
from Poem p
left join author a on p.AuthorId = a.Id
left join grade g on a.GradeId = g. Id
where g.id = 4

-- step 12 How many poems are there per grade?
-- step 13 How many authors are in each grade? (Order your results by grade starting with 1st Grade)
-- step 14 What is the title of the poem that has the most words?
-- step 15 Which author(s) have the most poems? (Remember authors can have the same name.)
-- step 16 How many poems have an emotion of sadness?
-- step 17 How many poems are not associated with any emotion?
-- step 18 Which emotion is associated with the least number of poems?
-- step 19 Which grade has the largest number of poems with an emotion of joy?
-- step 20 Which gender has the least number of poems with an emotion of fear?
