CREATE VIEW SupplierSupplyInvoiceView AS
SELECT s.SUP_ID, su.SPY_ID, i.INV_ID
FROM Supplier s
JOIN Supply_Supplier ss ON s.SUP_ID = ss.SUP_ID
JOIN Supply su ON ss.SPY_ID = su.SPY_ID
JOIN Supply_Invoice si ON su.SPY_ID = si.SPY_ID
JOIN Invoice i ON si.INV_ID = i.INV_ID
WHERE i.INV_TotalDue = 'RM1500.00' OR i.INV_TotalDue = 'RM1000.00';

SELECT *
FROM SupplierSupplyInvoiceView;
