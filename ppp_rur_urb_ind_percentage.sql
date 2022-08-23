SELECT 
	Rural_Urban_Indicator, 
	COUNT(*) AS number_of_loans,
	ROUND(COUNT(*) * 100.0/ SUM(COUNT(*)) OVER(), 2) AS percentage

FROM 
	`cst1-359800.hi_ppp_stdy.ppp_loan_data`

WHERE 
	Date_Approved BETWEEN DATE("2020-1-1") 
	AND DATE("2020-12-31")

GROUP BY 
	Rural_Urban_Indicator;