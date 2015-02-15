IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'Restaurants') AND type in (N'U'))
BEGIN
drop table Restaurants
END

IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'Cities') AND type in (N'U'))
BEGIN
drop table Cities
END

IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'States') AND type in (N'U'))
BEGIN
drop table States
END

IF  EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'TimeSlotTypes') AND type in (N'U'))
BEGIN
drop table TimeSlotTypes
END