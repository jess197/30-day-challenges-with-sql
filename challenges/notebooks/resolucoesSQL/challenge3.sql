select City, count(City) as numero_de_linhas
  from Customer 
group by City
having count(City) >= 2
order by 1 asc  
