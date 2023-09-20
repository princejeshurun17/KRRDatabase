SELECT c.CUS_ID, s.SRV_ID, o.ORD_Quantity, v.VCH_ID, m.MEN_Name, ch.CHF_Roles, i.ING_ID, sy.SPY_ID
FROM Customer c
JOIN Service_Customer sc ON c.CUS_ID = sc.CUS_ID
JOIN Service s ON sc.SRV_ID = s.SRV_ID
JOIN "Order" o ON s.SRV_ID = o.SRV_ID
JOIN Order_Voucher ov ON o.ORD_ID = ov.ORD_ID
JOIN Voucher v ON ov.VCH_ID = v.VCH_ID
JOIN Menu_Voucher mv ON v.VCH_ID = mv.VCH_ID
JOIN Menu m ON mv.MEN_ID = m.MEN_ID
JOIN Chef_Menu cm ON m.MEN_ID = cm.MEN_ID
JOIN Chef ch ON cm.CHF_ID = ch.CHF_ID
JOIN Chef_Ingredient ci ON ch.CHF_ID = ci.CHF_ID
JOIN Ingredient i ON ci.ING_ID = i.ING_ID
JOIN Supply sy ON i.SPY_ID = sy.SPY_ID
WHERE c.CUS_VisitFrequency = 'High'
  AND s.SRV_Type = 'Order'
  AND m.MEN_Calories > 0
  AND ch.CHF_Creativity = 'Creative'
ORDER BY c.CUS_ID DESC, s.SRV_ID DESC, o.ORD_Quantity DESC, v.VCH_ID DESC, m.MEN_Name DESC, ch.CHF_Roles DESC, i.ING_ID DESC, sy.SPY_ID DESC;