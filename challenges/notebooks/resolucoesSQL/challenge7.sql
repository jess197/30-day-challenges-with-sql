create table track2 as
select t.trackid
     , ar.name as artista
     , t.name as musica
     , ifnull(t.composer,'') as compositor
     , g.name as genero
     , (t.bytes/1048576)||' MB' as size_mb
  from track t
left join album a on t.albumid = a.albumid
left join artist ar on ar.artistid = a.artistid
left join genre g on g.genreid = t.genreid
where g.name = 'Rock';

select *
  from track2
limit 30;