IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'Restaurants') AND type in (N'U'))
BEGIN
drop table Restaurants
END