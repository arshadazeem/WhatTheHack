GO
SET IDENTITY_INSERT [dbo].[vets] ON 

INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (1, N'James', N'Carter')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (2, N'Helen', N'Leary')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (3, N'Linda', N'Douglas')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (4, N'Rafael', N'Ortega')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (5, N'Henry', N'Stevens')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (6, N'Sharon', N'Jenkins')

SET IDENTITY_INSERT [dbo].[vets] OFF 


GO
SET IDENTITY_INSERT [dbo].[specialties] ON 

INSERT [dbo].[specialties] ([id], [name]) VALUES (1, N'radiology')
INSERT [dbo].[specialties] ([id], [name]) VALUES (2, N'surgery')
INSERT [dbo].[specialties] ([id], [name]) VALUES (3, N'dentistry')
SET IDENTITY_INSERT [dbo].[specialties] OFF

GO
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (2, 1)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (3, 2)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (3, 3)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (4, 2)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (5, 1)

GO
SET IDENTITY_INSERT [dbo].[types] ON 

INSERT [dbo].[types] ([id], [name]) VALUES (1, N'cat')
INSERT [dbo].[types] ([id], [name]) VALUES (2, N'dog')
INSERT [dbo].[types] ([id], [name]) VALUES (3, N'lizard')
INSERT [dbo].[types] ([id], [name]) VALUES (4, N'snake')
INSERT [dbo].[types] ([id], [name]) VALUES (5, N'bird')
INSERT [dbo].[types] ([id], [name]) VALUES (6, N'hamster')
SET IDENTITY_INSERT [dbo].[types] OFF

GO
SET IDENTITY_INSERT [dbo].[owners] ON 

INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (1, N'George', N'Franklin', N'110 W. Liberty St.', N'Madison', N'6085551023')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (5, N'Peter', N'McTavish', N'2387 S. Fair Way', N'Madison', N'6085552765')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (6, N'Jean', N'Coleman', N'105 N. Lake St.', N'Monona', N'6085552654')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (7, N'Jeff', N'Black', N'1450 Oak Blvd.', N'Monona', N'6085555387')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (8, N'Maria', N'Escobito', N'345 Maple St.', N'Madison', N'6085557683')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (9, N'David', N'Schroeder', N'2749 Blackhawk Trail', N'Madison', N'6085559435')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (10, N'Carlos', N'Estaban', N'2335 Independence La.', N'Waunakee', N'6085555487')
SET IDENTITY_INSERT [dbo].[owners] OFF

GO
SET IDENTITY_INSERT [dbo].[pets] ON 

INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (1, N'Leo', CAST(N'2000-09-07' AS Date), 1, 1)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (6, N'George', CAST(N'2000-01-20' AS Date), 4, 5)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (7, N'Samantha', CAST(N'1995-09-04' AS Date), 1, 6)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (8, N'Max', CAST(N'1995-09-04' AS Date), 1, 6)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (9, N'Lucky', CAST(N'1999-08-06' AS Date), 5, 7)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (10, N'Mulligan', CAST(N'1997-02-24' AS Date), 2, 8)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (11, N'Freddy', CAST(N'2000-03-09' AS Date), 5, 9)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (12, N'Lucky', CAST(N'2000-06-24' AS Date), 2, 10)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (13, N'Sly', CAST(N'2002-06-08' AS Date), 1, 10)
SET IDENTITY_INSERT [dbo].[pets] OFF
GO
SET IDENTITY_INSERT [dbo].[visits] ON 

INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (1, 7, CAST(N'2010-03-04' AS Date), N'rabies shot')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (2, 8, CAST(N'2011-03-04' AS Date), N'rabies shot')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (3, 8, CAST(N'2009-06-04' AS Date), N'neutered')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (4, 7, CAST(N'2008-09-04' AS Date), N'spayed')
SET IDENTITY_INSERT [dbo].[visits] OFF
GO
