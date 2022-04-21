select CustomerId
     , Address
     , State
     , Country
     , cast(replace(PostalCode,'-','') as int)  as Postal_Code
  from Customer
where length(ltrim(replace(PostalCode,'-',''),0)) = 8
  and cast(PostalCode as int)