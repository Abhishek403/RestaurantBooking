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
	[StateId]           int  NOT NULL ,
	[Address]            varchar(500)  NULL ,
	[Mobile]             varchar(20)  NULL ,
	[BusinessPhoneNo]    varchar(20)  NULL,
	[CityId]			int not null,
	[TimeSlotTypeId]	int not null,
	CONSTRAINT fk1_child FOREIGN KEY (parent_id)
      REFERENCES parent (parent_id) MATCH SIMPLE
      ON UPDATE CASCADE ON DELETE CASCADE
)
 ALTER TABLE [Restaurants]
 	ADD CONSTRAINT [XPKRestaurants] PRIMARY KEY  CLUSTERED ([RestaurantId] ASC)
 END



-- ALTER TABLE [Referrers]
-- 	ADD CONSTRAINT [R_11] FOREIGN KEY ([HospitalEmpanelledWith]) REFERENCES [Hospitals]([HospitalId])
-- 		ON DELETE NO ACTION
-- 		ON UPDATE NO ACTION

-- ALTER TABLE [Referrers]
-- 	ADD CONSTRAINT [R_6] FOREIGN KEY ([AcquaintanceId]) REFERENCES [Acquaintances]([AcquaintanceId])
-- 		ON DELETE NO ACTION
-- 		ON UPDATE NO ACTION

-- ALTER TABLE [Visits]
-- 	ADD CONSTRAINT [R_9] FOREIGN KEY ([ReferrerId]) REFERENCES [Referrers]([ReferrerId])
-- 		ON DELETE NO ACTION
-- 		ON UPDATE NO ACTION

-- ALTER TABLE [Visits]
-- 	ADD CONSTRAINT [R_10] FOREIGN KEY ([SalesPersonId]) REFERENCES [SalesPersons]([SalesPersonId])
-- 		ON DELETE NO ACTION
-- 		ON UPDATE NO ACTION
		
-- ALTER TABLE [Visits]
-- 	ADD CONSTRAINT [R_12] FOREIGN KEY ([VisitStatus]) REFERENCES [ReferralStatuses]([ReferralStatusesId])
-- 		ON DELETE NO ACTION
-- 		ON UPDATE NO ACTION