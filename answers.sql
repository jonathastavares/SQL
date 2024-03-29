/* SELECT Quiz */

/* 1 */

SELECT name, population FROM world WHERE population BETWEEN 1000000 AND 1250000;

/* 2 */

/* Alternative E */

/* 3 */

SELECT name FROM world WHERE name LIKE '%a' OR name LIKE '%l'

/* 4 */

/* Alternative C */

/* 5 */

/* Andorra - 936 */

/* 6 */

SELECT name, area, population FROM world WHERE area > 50000 AND population < 10000000

/* 7 */

SELECT name, population/area FROM world WHERE name IN ('China', 'Nigeria', 'France', 'Australia')

/*----------------------------------------------------------------------------*/

/* BBC Quiz */

/* 1 */

SELECT name FROM world WHERE name LIKE 'U%'

/* 2 */

SELECT population FROM 'United Kingdom'

/* 3 */

/* 'name' should be name */

/* 4 */

/* Alternative D */

/* 5 */

SELECT name, population FROM world WHERE continent IN ('Europe', 'Asia')

/* 6 */

SELECT name FROM world WHERE name IN ('Cuba', 'Togo')

/* 7 */

/* Alternative C */

/*----------------------------------------------------------------------------*/

/* NOBEL Quiz */

/* 1 */

SELECT winner FROM nobel WHERE winner LIKE 'C%' AND winner LIKE '%n'

/* 2 */

SELECT COUNT(subject) FROM nobel WHERE subject = 'Chemistry' AND yr BETWEEN 1950 and 1960

/* 3 */

SELECT COUNT(DISTINCT yr) FROM nobel WHERE yr NOT IN (SELECT DISTINCT yr FROM nobel WHERE subject = 'Medicine')

/* 4 */

/* Alternative C */

/* 5 */

SELECT yr FROM nobel WHERE yr NOT IN(SELECT yr FROM nobel WHERE subject IN ('Chemistry','Physics'))

/* 6 */

SELECT DISTINCT yr FROM nobel WHERE subject='Medicine' AND yr NOT IN(SELECT yr FROM nobel WHERE subject='Literature') AND yr NOT IN (SELECT yr FROM nobel WHERE subject='Peace')

/* 7 */

/* Alternative D */

/*----------------------------------------------------------------------------*/

/* NESTED SELECT Quiz */

/* 1 */

SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

/* 2 */

SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

/* 3 */

SELECT name, region FROM bbc x WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

/* 4 */

/* Alternative - D */

/* 5 */

SELECT name FROM bbc WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')

/* 6 */

SELECT name FROM bbc WHERE population < (SELECT population FROM bbc WHERE name='Russia') AND population > (SELECT population FROM bbc WHERE name='Denmark')

/* 7 */

/* Alternative - B */

/*----------------------------------------------------------------------------*/

/* SUM and COUNT Quiz */

/* 1 */

SELECT SUM(population) FROM bbc WHERE region = 'Europe'

/* 2 */

SELECT COUNT(name) FROM bbc WHERE population < 150000

/* 3 */

/* Alternative - D */

/* 4 */

/* Alternative - E */

/* 5 */

SELECT AVG(population) FROM bbc WHERE name IN ('Poland', 'Germany', 'Denmark')

/* 6 */

SELECT region, SUM(population)/SUM(area) AS density FROM bbc GROUP BY region

/* 7 */

SELECT name, population/area AS density FROM bbc WHERE population = (SELECT MAX(population) FROM bbc)

/*----------------------------------------------------------------------------*/

/* NESTED SELECT Quiz */

/* 1 */

SELECT region, name, population FROM bbc x WHERE population <= ALL (SELECT population FROM bbc y WHERE y.region=x.region AND population>0)

/* 2 */

SELECT name,region,population FROM bbc x WHERE 50000 < ALL (SELECT population FROM bbc y WHERE x.region=y.region AND y.population>0)

/* 3 */

SELECT name, region FROM bbc x WHERE population < ALL (SELECT population/3 FROM bbc y WHERE y.region = x.region AND y.name != x.name)

/* 4 */

/* Alternative - D */

/* 5 */

SELECT name FROM bbc WHERE gdp > (SELECT MAX(gdp) FROM bbc WHERE region = 'Africa')

/* 6 */

SELECT name FROM bbc WHERE population < (SELECT population FROM bbc WHERE name='Russia') AND population > (SELECT population FROM bbc WHERE name='Denmark')

/* 7 */

/* Alternative - B */

/*----------------------------------------------------------------------------*/

/* JOIN Quiz */

/* 1 */

/* Alternative - D */

/* 2 */

/* Alternative - C */

/* 3 */

SELECT player, teamid, COUNT(*) FROM game JOIN goal ON matchid = id WHERE (team1 = "GRE" OR team2 = "GRE") AND teamid != 'GRE' GROUP BY player, teamid

/* 4 */

/* Alternative - A */

/* 5 */

SELECT DISTINCT player, teamid FROM game JOIN goal ON matchid = id WHERE stadium = 'National Stadium, Warsaw' AND (team1 = 'POL' OR team2 = 'POL') AND teamid != 'POL'

/* 6 */

SELECT DISTINCT player, teamid, gtime FROM game JOIN goal ON matchid = id WHERE stadium = 'Stadion Miejski (Wroclaw)' AND (( teamid = team2 AND team1 != 'ITA') OR ( teamid = team1 AND team2 != 'ITA'))

/* 7 */

/* Alternative - B */

/*----------------------------------------------------------------------------*/

/* JOIN Quiz 2 */

/* 1 */

SELECT name FROM actor INNER JOIN movie ON actor.id = director WHERE gross < budget

/* 2 */

SELECT * FROM actor JOIN casting ON actor.id = actorid JOIN movie ON movie.id = movieid

/* 3 */

SELECT name, COUNT(movieid) FROM casting JOIN actor ON actorid=actor.id WHERE name LIKE 'John %' GROUP BY name ORDER BY 2 DESC

/* 4 */

/* Alternative - B */

/* 5 */

SELECT name FROM movie JOIN casting ON movie.id = movieid JOIN actor ON actor.id = actorid WHERE ord = 1 AND director = 351

/* 6 */

/* Alternative - C */

/* 7 */

/* Alternative - B */

/*----------------------------------------------------------------------------*/

/* NULL quiz */

/* 1 */

SELECT teacher.name, dept.name FROM teacher LEFT OUTER JOIN dept ON (teacher.dept = dept.id)

/* 2 */

SELECT dept.name FROM teacher JOIN dept ON (dept.id = teacher.dept) WHERE teacher.name = 'Cutflower'

/* 3 */

SELECT dept.name, COUNT(teacher.name) FROM teacher RIGHT JOIN dept ON dept.id = teacher.dept GROUP BY dept.name

/* 4 */

/* Alternative - B */

/* 5 */

/* Alternative - A */

/* 6 */

/* Alternative - A */

/*----------------------------------------------------------------------------*/

/* SELF JOIN quiz */

/* 1 */

SELECT DISTINCT a.name, b.name FROM stops a JOIN route z ON a.id=z.stop JOIN route y ON y.num = z.num JOIN stops b ON y.stop=b.id WHERE a.name='Craiglockhart' AND b.name ='Haymarket'

/* 2 */

SELECT S2.id, S2.name, R2.company, R2.num FROM stops S1, stops S2, route R1, route R2 WHERE S1.name='Haymarket' AND S1.id=R1.stop AND R1.company=R2.company AND R1.num=R2.num AND R2.stop=S2.id AND R2.num='2A'

/* 3 */

SELECT a.company, a.num, stopa.name, stopb.name FROM route a JOIN route b ON (a.company=b.company AND a.num=b.num) JOIN stops stopa ON (a.stop=stopa.id) JOIN stops stopb ON (b.stop=stopb.id) WHERE stopa.name='Tollcross'
