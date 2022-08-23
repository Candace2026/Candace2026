SELECT
LMI_Indicator, 
COUNT(*) AS loan_count,
ROUND(COUNT(*) * 100.0/ SUM(COUNT(*)) OVER(), 2) AS LMI_Percentage

FROM `cst1-359800.hi_ppp_stdy.ppp_loan_data`

WHERE Date_Approved BETWEEN DATE("2020-1-1") AND DATE("2020-12-31")

GROUP BY LMI_Indicator;