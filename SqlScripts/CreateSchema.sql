IF  NOT EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'[Restaurants]') AND type in (N'U'))
BEGIN
CREATE TABLE [Restaurants]
( 
	[RestaurantsId]	
	[NatureOfRelationShip] varchar(255)  NULL ,
	[Name]               varchar(255)  NULL ,
	[JobTitle]           varchar(255)  NULL ,
	[Address]            varchar(MAX)  NULL ,
	[Mobile]             varchar(20)  NULL ,
	[BusinessPhoneNo]    varchar(20)  NULL ,
	[AcquaintanceId]     int identity(1,1)  NOT NULL 
)

-- ALTER TABLE [Acquaintances]
-- 	ADD CONSTRAINT [XPKAcquaintance] PRIMARY KEY  CLUSTERED ([AcquaintanceId] ASC)
-- END

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