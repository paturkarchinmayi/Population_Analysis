

USE ca_population;

/* To increase performance, index on county name */
CREATE INDEX county_name
ON cal_pop_proj(county_name);

/* Inital list of male and female populations per county for 2014 */
SELECT county_name, gender, SUM(population) As total_population
FROM cal_pop_proj
WHERE date_year = 2014
GROUP BY county_name, gender
ORDER BY county_name;


