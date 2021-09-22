## First couple of queries

SELECT date, location, new_cases, total_deaths, population, (total_deaths/total_cases)*100 AS percentage_death 
FROM coviddeaths
WHERE location = "United States" AND
date LIKE '%/%/21'

-- Looking at total deaths compared to total cases

SELECT date, location, total_cases, total_deaths, (total_deaths/total_cases)*100 AS percentage_death
FROM coviddeaths
WHERE location = "United States"


## Highest percentage of death 10.91 on 03/2/20 followed by biggest sample of 6.25 on 05/15/2020 -- Highest percentage in 2021 on 09/09/21 at 1.6122

SELECT date, location, total_cases, total_deaths, (total_deaths/total_cases)*100 AS percentage_death
FROM coviddeaths
WHERE location = "Guatemala"

## Highest percentage of death w/ over 100 cases in Guatemala on 04/10/2020 with 2.38 and 2/22/2021 in 2021 with 3.68

SELECT date, location, total_cases, total_deaths, (total_deaths/total_cases)*100 AS percentage_death
FROM coviddeaths
WHERE location = "Guatemala" AND
date LIKE "%/%/21"

## Adding population - new_cases/population to determine percentage of pop. w/ covid

SELECT date, location, total_cases, total_deaths, population, (total_cases/population)*100 AS percentage_population_with_covid
FROM coviddeaths
WHERE location = "Guatemala" AND
date LIKE "%/%/21"
Order BY percentage_population_with_covid DESC

## total cases against pop 2.7 has gotten covide (not taking into account repeat cases) in Guatemala 
 
SELECT date, location, total_cases, total_deaths, population, (total_cases/population)*100 AS percentage_population_with_covid
FROM coviddeaths
WHERE location = "United States" AND
date LIKE "%/%/21"
Order BY percentage_population_with_covid DESC


## total cases against pop 12.2 (no repeat cases) in US 

SELECT date, location, population, total_cases 
FROM coviddeaths
GROUP BY location
ORDER BY total_cases DESC

## max of deaths per country top 10 

SELECT date, location, population, MAX(total_cases) 
FROM coviddeaths
WHERE location='Guatemala'
ORDER BY total_cases DESC



