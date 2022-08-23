--Using public data provided by the Small Business Association (SBA), we confirm the overall minimum and maximum PPP loan amount within the data
--Spaces added between statements readability

SELECT
Borrower_State,
--Isolate the maximum PPP loan amount
MAX(Current_Approval_Amount) AS Max_Approved_Amt,
--Isolate the minimum PPP loan amount
MIN(Current_Approval_Amount) AS Min_Approved_Amt

FROM `cst1-359800.hi_ppp_stdy.ppp_loan_data`
--Filter PPP loans taken during the year 2020 only
WHERE Date_Approved BETWEEN DATE("2020-4-3") AND DATE("2020-12-31")
--Group the max and min PPP loans by the states in which the businesses are domiciled
GROUP BY Borrower_State
--Sort states in ascending order
ORDER BY Borrower_State ASC;
