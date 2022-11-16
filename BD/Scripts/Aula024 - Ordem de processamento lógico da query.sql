


SELECT SalesOrderID,
       SalesOrderDetailID,
       CarrierTrackingNumber,
       OrderQty,
       ProductID,
       UnitPrice,
       LineTotal,
       TRY_CONVERT(VARCHAR(10), ModifiedDate, 103) AS [ModifiedDate]
  FROM Sales.SalesOrderDetail