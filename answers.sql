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
