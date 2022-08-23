SELECT
Borrower_State,
MAX(Current_Approval_Amount) AS Max_Approved_Amt,
MIN(Current_Approval_Amount) AS Min_Approved_Amt

FROM `cst1-359800.hi_ppp_stdy.ppp_loan_data`

WHERE Date_Approved BETWEEN DATE("2020-4-3") AND DATE("2020-12-31")

GROUP BY Borrower_State

ORDER BY Borrower_State ASC;