GO
SET IDENTITY_INSERT [dbo].[vets] ON 

INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (1, 'James', 'Carter')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (2, 'Hele', 'Leary')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (3, 'Linda', 'Douglas')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (4, 'Rafael', 'Ortega')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (5, 'Henry', 'Stevens')
INSERT [dbo].[vets] ([id], [first_name], [last_name]) VALUES (6, 'Sharo', 'Jenkins')

SET IDENTITY_INSERT [dbo].[vets] OFF 

GO
SET IDENTITY_INSERT [dbo].[specialties] ON 

INSERT [dbo].[specialties] ([id], [name]) VALUES (1, 'radiology')
INSERT [dbo].[specialties] ([id], [name]) VALUES (2, 'surgery')
INSERT [dbo].[specialties] ([id], [name]) VALUES (3, 'dentistry')
SET IDENTITY_INSERT [dbo].[specialties] OFF

GO
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (2, 1)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (3, 2)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (3, 3)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (4, 2)
INSERT [dbo].[vet_specialties] ([vet_id], [specialty_id]) VALUES (5, 1)

GO
SET IDENTITY_INSERT [dbo].[types] ON 

INSERT [dbo].[types] ([id], [name]) VALUES (1, 'cat')
INSERT [dbo].[types] ([id], [name]) VALUES (2, 'dog')
INSERT [dbo].[types] ([id], [name]) VALUES (3, 'lizard')
INSERT [dbo].[types] ([id], [name]) VALUES (4, 'snake')
INSERT [dbo].[types] ([id], [name]) VALUES (5, 'bird')
INSERT [dbo].[types] ([id], [name]) VALUES (6, 'hamster')
SET IDENTITY_INSERT [dbo].[types] OFF

GO
SET IDENTITY_INSERT [dbo].[owners] ON 

INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (1, 'George', 'Frankli', '110 W. Liberty St.', 'Madiso', '6085551023')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (5, 'Peter', 'McTavish', '2387 S. Fair Way', 'Madiso', '6085552765')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (6, 'Jea', 'Colema', '105 N. Lake St.', 'Monona', '6085552654')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (7, 'Jeff', 'Black', '1450 Oak Blvd.', 'Monona', '6085555387')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (8, 'Maria', 'Escobito', '345 Maple St.', 'Madiso', '6085557683')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (9, 'David', 'Schroeder', '2749 Blackhawk Trail', 'Madiso', '6085559435')
INSERT [dbo].[owners] ([id], [first_name], [last_name], [address], [city], [telephone]) VALUES (10, 'Carlos', 'Estaba', '2335 Independence La.', 'Waunakee', '6085555487')
SET IDENTITY_INSERT [dbo].[owners] OFF

GO
SET IDENTITY_INSERT [dbo].[pets] ON 

INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (1, 'Leo', CAST('2000-09-07' AS Date), 1, 1)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (6, 'George', CAST('2000-01-20' AS Date), 4, 5)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (7, 'Samantha', CAST('1995-09-04' AS Date), 1, 6)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (8, 'Max', CAST('1995-09-04' AS Date), 1, 6)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (9, 'Lucky', CAST('1999-08-06' AS Date), 5, 7)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (10, 'Mulliga', CAST('1997-02-24' AS Date), 2, 8)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (11, 'Freddy', CAST('2000-03-09' AS Date), 5, 9)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (12, 'Lucky', CAST('2000-06-24' AS Date), 2, 10)
INSERT [dbo].[pets] ([id], [name], [birth_date], [type_id], [owner_id]) VALUES (13, 'Sly', CAST('2002-06-08' AS Date), 1, 10)
SET IDENTITY_INSERT [dbo].[pets] OFF
GO
SET IDENTITY_INSERT [dbo].[visits] ON 

INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (1, 7, CAST('2010-03-04' AS Date), 'rabies shot')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (2, 8, CAST('2011-03-04' AS Date), 'rabies shot')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (3, 8, CAST('2009-06-04' AS Date), 'neutered')
INSERT [dbo].[visits] ([id], [pet_id], [visit_date], [description]) VALUES (4, 7, CAST('2008-09-04' AS Date), 'spayed')
SET IDENTITY_INSERT [dbo].[visits] OFF
GO
