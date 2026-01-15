## ACTIVITYFACT Table

select 
    AF.chargeid, 
    AF.AMOUNT, 
    AF.PAYMENT,
    TN.amount as transaction_amount,
    AF.EXPECTEDAMOUNT, 
    AF.CHARGEAMT, 
    AF.ALLOWABLE,
    AF.LATECHARGE,
    AF.ADJUSTMENT,
    AF.CONTRACTUAL,
    AF.FREECARE,
    AF.BADDEBT,
    AF.COLLECT,
    AF.PRECOLLECT,
    AF.RECOVERY,
    AF.FEE,
    AF.CAPITATED,
    AF.GLOBAL,
    AF.WITHHOLD,
    AF.INTEREST,
    AF.INCENTIVE,
    AF.OTHER,
    AF.TRANSFER,
    CH.amount as charge_amount
from financials."ACTIVITYFACT" AF 
LEFT JOIN CHARGEDETAIL CH
    on CH.chargeid = AF.chargeid
LEFT JOIN TRANSACTION TN
    on TN.chargeid = CH.chargeid
where TYPE = 'PAYMENT' limit 10;



## Findings
AMOUNT is same as PAYMENT


## Transaction Table
Total records = 1520708
There are two fields revenue related fields in the transaction table
The transaction table is related to ACTIVITYFACT table via the chargeid
But the data seems to be different in ACTIVITYFACT.amount and  

- amount
    - The amount contains a lot of the negative values
- expectedallowedamount 


## Charge Detail
Total records = 516390
The table has amount field but mostly data is null in there, only 239  records have amount value