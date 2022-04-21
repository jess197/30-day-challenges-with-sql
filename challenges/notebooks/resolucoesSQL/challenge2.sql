select FirstName
  from Customer 
 where FirstName like 'A%' 
  and substr(FirstName,3,1) = 'e' 