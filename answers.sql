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

/* JOIN Quiz */

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
