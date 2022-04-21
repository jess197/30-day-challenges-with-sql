select LastName
      , strftime('%Y', BirthDate) as ano_de_nascimento
      , strftime('%Y', 'now') - strftime('%Y', BirthDate) as idade
  from Employee
order by idade desc