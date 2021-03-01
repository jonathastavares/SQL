/* SELECT Quiz */

/* 1 */

SELECT name, population FROM world WHERE population BETWEEN 1000000 AND 1250000;

/* 2 */

/* Table - E */

/* 3 */

SELECT name FROM world WHERE name LIKE '%a' OR name LIKE '%l'

/* 4 */

/* Table - C */

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



/* 5 */


/* 6 */


/* 7 */


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