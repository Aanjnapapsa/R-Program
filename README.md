# R-Program
The directroy contains 332 comma-separated-value (CSV) files containing pollution monitoring data for fine particulate matter (PM) air pollution at 332 locations. Each file contains data from a single monitor and the ID number for each monitor is contained in the file name. For example, data for monitor 200 is contained in the file "200.csv". Each file contains three variables:

    Date: the date of the observation in YYYY-MM-DD format (year-month-day)
    sulfate: the level of sulfate PM in the air on that date (measured in micrograms per cubic meter)
    nitrate: the level of nitrate PM in the air on that date (measured in micrograms per cubic meter)
 

Function named 'pollutantmean1' that calculates the mean of a pollutant (sulfate or nitrate) across a specified list of monitors. The function 'pollutantmean' takes three arguments: 'directory', 'pollutant', and 'id'. Given a vector monitor ID numbers, 'pollutantmean' reads that monitors' particulate matter data from the directory specified in the 'directory' argument and returns the mean of the pollutant across all of the monitors, ignoring any missing values coded as NA.
