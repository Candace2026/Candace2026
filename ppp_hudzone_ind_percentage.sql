--Using public data provided by the Small Business Association (SBA), we calculate how many HUBZone businesses received PPP loans of >$150K
--Spaces added between statements readability

SELECT Hubzone_Indicator, 
--Count the number of loans received by HUBZone businesses
COUNT(*) AS number_of_loans,
--Calculate the rounded percentage of the Hubzone loans out of all business loans received
ROUND(COUNT(*) * 100.0/ SUM(COUNT(*)) OVER(), 2) AS hudzone_percentage     

FROM `cst1-359800.hi_ppp_stdy.ppp_loan_data`

WHERE Date_Approved BETWEEN DATE("2020-1-1") AND DATE("2020-12-31")    --Filter the approval dates for the year 2020 only

GROUP BY Hubzone_Indicator;         --Isolate the results under Hubzone businesses only
