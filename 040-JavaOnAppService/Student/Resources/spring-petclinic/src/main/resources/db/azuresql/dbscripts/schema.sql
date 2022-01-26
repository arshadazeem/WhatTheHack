-- vets
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'vets')
 BEGIN
	  CREATE TABLE vets (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  first_name VARCHAR(30),
	  last_name VARCHAR(30),
	  INDEX ix_vets_lname (last_name)
	  );
 END

-- specialties
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'specialties')
 BEGIN
	CREATE TABLE specialties (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  name VARCHAR(80)
	);
END

-- vet_specialties
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'vet_specialties')
 BEGIN           
	CREATE TABLE vet_specialties (
	  vet_id INT NOT NULL,
	  specialty_id INT NOT NULL,
	  FOREIGN KEY (vet_id) REFERENCES vets(id),
	  FOREIGN KEY (specialty_id) REFERENCES specialties(id),
	  UNIQUE (vet_id,specialty_id)
	);
 END

-- types
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'types')
 BEGIN
	CREATE TABLE types (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  name VARCHAR(80)  
	);
 END

-- owners
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'owners')
 BEGIN
	CREATE TABLE owners (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  first_name VARCHAR(30),
	  last_name VARCHAR(30),
	  address VARCHAR(255),
	  city VARCHAR(80),
	  telephone VARCHAR(20),
	  INDEX ix_owners_lname (last_name)
	);
END

-- pets
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'pets')
 BEGIN
	CREATE TABLE pets (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  name VARCHAR(30),
	  birth_date DATE,
	  type_id INT NOT NULL,
	  owner_id INT NOT NULL,
	  INDEX ix_pets_lname (name),
	  FOREIGN KEY (owner_id) REFERENCES owners(id),
	  FOREIGN KEY (type_id) REFERENCES types(id)
	);
END

-- visits
IF NOT EXISTS (SELECT 0 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'visits')
 BEGIN
	CREATE TABLE visits (
	  id INT NOT NULL IDENTITY PRIMARY KEY,
	  pet_id INT NOT NULL,
	  visit_date DATE,
	  description VARCHAR(255),
	  FOREIGN KEY (pet_id) REFERENCES pets(id)
	);
 END
