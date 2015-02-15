IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[TimeSlotTypes]') AND type in (N'U'))
BEGIN
CREATE TABLE [TimeSlotTypes]
(
	[TimeSlotTypeId]  int identity(1,1) not null
	[TimeSlot] varchar(20) not null -- only 3 types - range, exact, both
)

IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[States]') AND type in (N'U'))
BEGIN
CREATE TABLE [States]
(
	[StateId]  int identity(1,1) not null,
	[StateName] varchar(100) not null
)
ALTER TABLE [States]
 	ADD CONSTRAINT [XPKStates] PRIMARY KEY  CLUSTERED ([StateId] ASC)
 END

IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[Cities]') AND type in (N'U'))
BEGIN
CREATE TABLE [Cities]
(
	[CityId]  int identity(1,1) not null,
	[CityName] varchar(100) not null,
	[StateId] int not null
)
ALTER TABLE [Cities]
 	ADD CONSTRAINT [XPKCities] PRIMARY KEY  CLUSTERED ([CityId] ASC)
 END

IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[Restaurants]') AND type in (N'U'))
BEGIN
CREATE TABLE [Restaurants]
( 
	[RestaurantId]	   int identity(1,1) NOT NULL,
	[RestName]               varchar(255)  NOT NULL ,
	[PinCode]           varchar(10)  NULL ,
	[Address]            varchar(500)  NULL ,
	[Mobile]             varchar(20)  NULL ,
	[BusinessPhoneNo]    varchar(20)  NULL,
	[CityId]			int not null,
	[TimeSlotTypeId]	int not null,
	CONSTRAINT fk1_Restaurants_CityId FOREIGN KEY (CityId)
      REFERENCES Cities (CityId) ,
    CONSTRAINT fk1_Restaurants_TimeSlotTypeId FOREIGN KEY (TimeSlotTypeId)
      REFERENCES TimeSlotTypes (TimeSlotTypeId) 
)
 ALTER TABLE [Restaurants]
 	ADD CONSTRAINT [XPKRestaurants] PRIMARY KEY  CLUSTERED ([RestaurantId] ASC)
 END