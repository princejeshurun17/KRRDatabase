SELECT Manager.MAN_ID, Manager.MAN_YearOfExperience, Supplier.SUP_ID, Supplier.SUP_CompanyName, Supply.SPY_ID, Supply.SPY_Type, Invoice.INV_ID, Invoice.INV_IssuedDate, Payment.PYM_ID, Payment.PYM_Amount, Receipt.RCP_ID, Receipt.RCP_Format
FROM Manager
JOIN Manager_Supplier ON Manager.MAN_ID = Manager_Supplier.MAN_ID
JOIN Supplier ON Manager_Supplier.SUP_ID = Supplier.SUP_ID
JOIN Supply_Supplier ON Supplier.SUP_ID = Supply_Supplier.SUP_ID
JOIN Supply ON Supply_Supplier.SPY_ID = Supply.SPY_ID
JOIN Supply_Invoice ON Supply.SPY_ID = Supply_Invoice.SPY_ID
JOIN Invoice ON Supply_Invoice.INV_ID = Invoice.INV_ID
JOIN Payment ON Invoice.INV_ID = Payment.INV_ID
JOIN Receipt ON Payment.PYM_ID = Receipt.PYM_ID
WHERE Manager.MAN_TrainedBySchool = 'Yes'
AND Supply.SPY_Type = 'Furniture'
AND Invoice.INV_PaymentMethod = 'Online Banking';