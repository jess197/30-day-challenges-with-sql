select CustomerId as codigo
     , upper(substr(FirstName,0,1))||substr(FirstName,1)||' '||lower(LastName) as nome
     , Lower(Address) as endereco
     , City||'-'||Upper(State) as cidade
     , upper(Country) as pais
     , trim(cast(replace(PostalCode,'-','') as int)) as cep
    -- , regexp_replace(phone,'[a-zA-Z _\-#]','') as telefone
     , replace(replace(replace(replace(replace(phone,'-',''),'+',''),' ',''),')',''),'(','') as telefone
     , email
  from Customer
where pais = 'BRAZIL'
   and cep <> 0