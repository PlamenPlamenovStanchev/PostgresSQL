CREATE TABLE IF NOT EXISTS departments (
  "id" SERIAL PRIMARY KEY,
  department_name VARCHAR(150) NOT NULL,
  manager_id INT NOT NULL,
  CONSTRAINT departments_manager_id_check CHECK (manager_id > 0)
);


INSERT INTO departments (
	department_name, manager_id
) 
VALUES
	('Engineering', 12),
	('Tool Design', 4),
	('Sales', 273),
	('Marketing', 46),
	('Purchasing', 6),
	('Research and Development', 42),
	('Production', 148),
	('Production Control', 21),
	('Human Resources', 30),
	('Finance', 3),
	('Information Services', 42),
	('Document Control', 90),
	('Quality Assurance', 274),
	('Facilities and Maintenance', 218),
	('Shipping and Receiving', 85),
	('Executive', 109);
	
	
CREATE TABLE IF NOT EXISTS employees (
  "id" SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL, 
  job_title VARCHAR(80) NOT NULL,
  department_id INT NOT NULL,
  manager_id INT,
  hire_date DATE DEFAULT NULL,
  salary NUMERIC(15, 3),
  address_id INT NOT NULL,
  CONSTRAINT employees_department_id_check CHECK (department_id > 0),
  CONSTRAINT employees_manager_id_check CHECK (manager_id > 0),
  CONSTRAINT employees_salary_check CHECK (salary >= 0),
  CONSTRAINT employees_address_id_check CHECK (address_id > 0)
);


INSERT INTO employees (
	first_name, last_name, job_title, department_id, manager_id, hire_date, salary, address_id
) 
VALUES
	('Guy', 'Gilbert', 'Production Technician', 7, 16, '1998-07-31 00:00:00.000000', 12500.0000, 166),
	('Kevin', 'Brown', 'Marketing Assistant', 4, 6, '1999-02-26 00:00:00.000000', 13500.0000, 102),
	('Roberto', 'Tamburello', 'Engineering Manager', 1, 12, '1999-12-12 00:00:00.000000', 43300.0000, 193),
	('Rob', 'Walters', 'Senior Tool Designer', 2, 3, '2000-01-05 00:00:00.000000', 29800.0000, 155),
	('Thierry', 'D`Hers', 'Tool Designer', 2, 263, '2003-01-11 00:00:00.000000', 25000.0000, 40),
	('David', 'Bradley', 'Marketing Manager', 5, 109, '2000-01-20 00:00:00.000000', 37500.0000, 199),
	('JoLynn', 'Dobney', 'Production Supervisor', 7, 21, '2000-01-26 00:00:00.000000', 25000.0000, 275),
	('Ruth', 'Ellerbrock', 'Production Technician', 7, 185, '2015-02-06 00:00:00.000000', 13500.0000, 108),
	('Gail', 'Erickson', 'Design Engineer', 1, 3, '2000-02-06 00:00:00.000000', 32700.0000, 22),
	('Barry', 'Johnson', 'Production Technician', 7, 185, '2000-02-07 00:00:00.000000', 13500.0000, 285),
	('Jossef', 'Goldberg', 'Design Engineer', 1, 3, '2000-02-24 00:00:00.000000', 32700.0000, 214),
	('Terri', 'Duffy', 'Vice President of Engineering', 1, 109, '2000-03-03 00:00:00.000000', 63500.0000, 209),
	('Sidney', 'Higa', 'Production Technician', 7, NULL, '2000-03-05 00:00:00.000000', 13500.0000, 73),
	('Taylor', 'Maxwell', 'Production Supervisor', 7, 21, '2010-03-11 00:00:00.000000', 25000.0000, 82),
	('Jeffrey', 'Ford', 'Production Technician', 7, 185, '2000-03-23 00:00:00.000000', 13500.0000, 156),
	('Jo', 'Brown', 'Production Supervisor', 7, 21, '2000-03-30 00:00:00.000000', 25000.0000, 70),
	('Doris', 'Hartwig', 'Production Technician', 7, 185, '2019-04-11 00:00:00.000000', 13500.0000, 144),
	('John', 'Campbell', 'Production Supervisor', 7, 21, '2000-04-18 00:00:00.000000', 25000.0000, 245),
	('Diane', 'Glimp', 'Production Technician', 7, 185, '2020-04-29 00:00:00.000000', 13500.0000, 184),
	('Steven', 'Selikoff', 'Production Technician', 7, 173, '2001-01-02 00:00:00.000000', 9500.0000, 104),
	('Peter', 'Krebs', 'Production Control Manager', 8, 148, '2001-01-02 00:00:00.000000', 24500.0000, 11),
	('Stuart', 'Munson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 36),
	('Greg', 'Alderson', 'Production Technician', 7, 197, '2001-01-03 00:00:00.000000', 10000.0000, 18),
	('David', 'Johnson', 'Production Technician', 7, 184, '2001-01-03 00:00:00.000000', 9500.0000, 142),
	('Zheng', 'Mu', 'Production Supervisor', 7, 21, '2001-01-04 00:00:00.000000', 25000.0000, 278),
	('Ivo', 'Salmre', 'Production Technician', 7, 108, '2001-01-05 00:00:00.000000', 14000.0000, 165),
	('Paul', 'Komosinski', 'Production Technician', 7, 87, '2001-01-05 00:00:00.000000', 15000.0000, 32),
	('Ashvini', 'Sharma', 'Network Administrator', 11, 150, '2001-01-05 00:00:00.000000', 32500.0000, 133),
	('Kendall', 'Keil', 'Production Technician', 7, 14, '2001-01-06 00:00:00.000000', 11000.0000, 257),
	('Paula', 'Barreto de Mattos', 'Human Resources Manager', 9, 140, '2001-01-07 00:00:00.000000', 27100.0000, 2),
	('Alejandro', 'McGuel', 'Production Technician', 7, 210, '2001-01-07 00:00:00.000000', 15000.0000, 274),
	('Garrett', 'Young', 'Production Technician', 7, 184, '2001-01-08 00:00:00.000000', 9500.0000, 283),
	('Jian Shuo', 'Wang', 'Production Technician', 7, 135, '2001-01-08 00:00:00.000000', 9500.0000, 160),
	('Susan', 'Eaton', 'Stocker', 15, 85, '2001-01-08 00:00:00.000000', 9000.0000, 204),
	('Vamsi', 'Kuppa', 'Shipping and Receiving Clerk', 15, 85, '2001-01-08 00:00:00.000000', 9500.0000, 51),
	('Alice', 'Ciccu', 'Production Technician', 7, 38, '2001-01-08 00:00:00.000000', 11000.0000, 284),
	('Simon', 'Rapier', 'Production Technician', 7, 7, '2001-01-09 00:00:00.000000', 12500.0000, 64),
	('Jinghao', 'Liu', 'Production Supervisor', 7, 21, '2011-01-09 00:00:00.000000', 25000.0000, 55),
	('Michael', 'Hines', 'Production Technician', 7, 182, '2001-01-10 00:00:00.000000', 14000.0000, 168),
	('Yvonne', 'McKay', 'Production Technician', 7, NULL, '2012-01-10 00:00:00.000000', 10000.0000, 107),
	('Peng', 'Wu', 'Quality Assurance Supervisor', 13, 200, '2001-01-10 00:00:00.000000', 21600.0000, 39),
	('Jean', 'Trenary', 'Information Services Manager', 11, 109, '2001-01-12 00:00:00.000000', 50500.0000, 194),
	('Russell', 'Hunter', 'Production Technician', 7, 74, '2013-01-13 00:00:00.000000', 11000.0000, 258),
	('A. Scott', 'Wright', 'Master Scheduler', 8, 148, '2001-01-13 00:00:00.000000', 23600.0000, 172),
	('Fred', 'Northup', 'Production Technician', 7, 210, '2001-01-13 00:00:00.000000', 15000.0000, 282),
	('Sariya', 'Harnpadoungsataya', 'Marketing Specialist', 4, 6, '2001-01-13 00:00:00.000000', 14400.0000, 106),
	('Willis', 'Johnson', 'Recruiter', 9, 30, '2014-01-14 00:00:00.000000', 18300.0000, 99),
	('Jun', 'Cao', 'Production Technician', 7, 38, '2001-01-15 00:00:00.000000', 11000.0000, 197),
	('Christian', 'Kleinerman', 'Maintenance Supervisor', 14, 218, '2001-01-15 00:00:00.000000', 20400.0000, 118),
	('Susan', 'Metters', 'Production Technician', 7, 184, '2001-01-15 00:00:00.000000', 9500.0000, 224),
	('Reuben', 'D`sa', 'Production Supervisor', 7, 21, '2015-01-16 00:00:00.000000', 25000.0000, 249),
	('Kirk', 'Koenigsbauer', 'Production Technician', 7, 123, '2001-01-16 00:00:00.000000', 10000.0000, 250),
	('David', 'Ortiz', 'Production Technician', 7, 18, '2001-01-16 00:00:00.000000', 12500.0000, 267),
	('Tengiz', 'Kharatishvili', 'Control Specialist', 12, 90, '2001-01-17 00:00:00.000000', 16800.0000, 129),
	('Hanying', 'Feng', 'Production Technician', 7, 143, '2001-01-17 00:00:00.000000', 14000.0000, 182),
	('Kevin', 'Liu', 'Production Technician', 7, 210, '2016-01-18 00:00:00.000000', 15000.0000, 259),
	('Annik', 'Stahl', 'Production Technician', 7, 16, '2001-01-18 00:00:00.000000', 12500.0000, 262),
	('Suroor', 'Fatima', 'Production Technician', 7, 38, '2017-01-18 00:00:00.000000', 11000.0000, 86),
	('Deborah', 'Poe', 'Accounts Receivable Specialist', 10, 139, '2018-01-19 00:00:00.000000', 19000.0000, 103),
	('Jim', 'Scardelis', 'Production Technician', 7, 74, '2001-01-20 00:00:00.000000', 11000.0000, 88),
	('Carole', 'Poland', 'Production Technician', 7, 173, '2001-01-20 00:00:00.000000', 9500.0000, 72),
	('George', 'Li', 'Production Technician', 7, 184, '2019-01-22 00:00:00.000000', 9500.0000, 58),
	('Gary', 'Yukish', 'Production Technician', 7, 87, '2001-01-23 00:00:00.000000', 15000.0000, 80),
	('Cristian', 'Petculescu', 'Production Supervisor', 7, 21, '2001-01-23 00:00:00.000000', 25000.0000, 276),
	('Raymond', 'Sam', 'Production Technician', 7, 143, '2001-01-24 00:00:00.000000', 14000.0000, 75),
	('Janaina', 'Bueno', 'Application Specialist', 11, 42, '2020-01-24 00:00:00.000000', 27400.0000, 131),
	('Bob', 'Hohman', 'Production Technician', 7, 14, '2001-01-25 00:00:00.000000', 11000.0000, 44),
	('Shammi', 'Mohamed','Production Technician', 7, 210, '2001-01-25 00:00:00.000000', 15000.0000, 4),
	('Linda', 'Moschell','Production Technician', 7, 38, '2001-01-26 00:00:00.000000', 11000.0000, 5),
	('Mindy', 'Martin', 'Benefits Specialist', 9, 30, '2021-01-26 00:00:00.000000', 16600.0000, 171),
	('Wendy', 'Kahn', 'Finance Manager', 10, 140, '2001-01-26 00:00:00.000000', 43300.0000, 232),
	('Kim', 'Ralls', 'Stocker', 15, 85, '2023-01-27 00:00:00.000000', 9000.0000, 42),
	('Sandra', 'Reategui Alayo', 'Production Technician', 7, 135, '2001-01-27 00:00:00.000000', 9500.0000, 255),
	('Kok-Ho', 'Loh', 'Production Supervisor', 7, 21, '2020-01-28 00:00:00.000000', 25000.0000, 10),
	('Douglas', 'Hite', 'Production Technician', 7, 159, '2021-01-28 00:00:00.000000', 10000.0000, 57),
	('James', 'Kramer', 'Production Technician', 7, 7, '2001-01-28 00:00:00.000000', 12500.0000, 162),
	('Sean', 'Alexander', 'Quality Assurance Technician', 13, 41, '2001-01-29 00:00:00.000000', 10600.0000, 210),
	('Nitin', 'Mirchandani', 'Production Technician', 7, 182, '2022-01-29 00:00:00.000000', 14000.0000, 231),
	('Diane', 'Margheim', 'Research and Development Engineer', 6, 158, '2001-01-30 00:00:00.000000', 40900.0000, 111),
	('Rebecca', 'Laszlo', 'Production Technician', 7, 16, '2001-01-30 00:00:00.000000', 12500.0000, 6),
	('Rajesh', 'Patel', 'Production Technician', 7, NULL, '2011-02-01 00:00:00.000000', 15000.0000, 81),
	('Vidur', 'Luthra', 'Recruiter', 9, 30, '2001-02-02 00:00:00.000000', 18300.0000, 176),
	('John', 'Evans', 'Production Technician', 7, 38, '2012-02-02 00:00:00.000000', 11000.0000, 253),
	('Nancy', 'Anderson', 'Production Technician', 7, 7, '2013-02-03 00:00:00.000000', 12500.0000, 227),
	('Pilar', 'Ackerman', 'Shipping and Receiving Supervisor', 15, 21, '2001-02-03 00:00:00.000000', 19200.0000, 269),
	('David', 'Yalovsky', 'Production Technician', 7, 184, '2001-02-03 00:00:00.000000', 9500.0000, 241),
	('David', 'Hamilton', 'Production Supervisor', 7, 21, '2015-02-04 00:00:00.000000', 25000.0000, 150),
	('Laura', 'Steele', 'Production Technician', 7, 123, '2016-02-04 00:00:00.000000', 10000.0000, 62),
	('Margie', 'Shoop', 'Production Technician', 7, 16, '2017-02-05 00:00:00.000000', 12500.0000, 92),
	('Zainal', 'Arifin', 'Document Control Manager', 12, 200, '2001-02-05 00:00:00.000000', 17800.0000, 128),
	('Lorraine', 'Nay', 'Production Technician', 7, 210, '2001-02-05 00:00:00.000000', 15000.0000, 94),
	('Fadi', 'Fakhouri', 'Production Technician', 7, 143, '2018-02-05 00:00:00.000000', 14000.0000, 281),
	('Ryan', 'Cornelsen', 'Production Technician', 7, 51, '2001-02-06 00:00:00.000000', 15000.0000, 228),
	('Candy', 'Spoon', 'Accounts Receivable Specialist', 10, 139, '2001-02-07 00:00:00.000000', 19000.0000, 122),
	('Nuan', 'Yu', 'Production Technician', 7, 74, '2019-02-07 00:00:00.000000', 11000.0000, 12),
	('William', 'Vong', 'Scheduling Assistant', 8, 44, '2020-02-08 00:00:00.000000', 16000.0000, 35),
	('Bjorn', 'Rettig', 'Production Technician', 7, 173, '2001-02-08 00:00:00.000000', 9500.0000, 268),
	('Scott', 'Gode', 'Production Technician', 7, 197, '2001-02-09 00:00:00.000000', 10000.0000, 256),
	('Michael', 'Rothkugel', 'Production Technician', 7, 87, '2022-02-11 00:00:00.000000', 15000.0000, 93),
	('Lane', 'Sacksteder', 'Production Technician', 7, 143, '2001-02-12 00:00:00.000000', 14000.0000, 239),
	('Pete', 'Male', 'Production Technician', 7, 14, '2001-02-12 00:00:00.000000', 11000.0000, 273),
	('Dan', 'Bacon', 'Application Specialist', 11, 42, '2021-02-12 00:00:00.000000', 27400.0000, 126),
	('David', 'Barber', 'Assistant to the Chief Financial Officer', 10, 140, '2001-02-13 00:00:00.000000', 13500.0000, 173),
	('Lolan', 'Song', 'Production Technician', 7, 74, '2001-02-13 00:00:00.000000', 11000.0000, 77),
	('Paula', 'Nartker', 'Production Technician', 7, 210, '2001-02-13 00:00:00.000000', 15000.0000, 247),
	('Mary', 'Gibson', 'Marketing Specialist', 4, 6, '2023-02-13 00:00:00.000000', 14400.0000, 110),
	('Mindaugas', 'Krapauskas', 'Production Technician', 7, 38, '2001-02-14 00:00:00.000000', 11000.0000, 74),
	('Eric', 'Gubbels', 'Production Supervisor', 7, 21, '2010-02-15 00:00:00.000000', 25000.0000, 85),
	('Ken', 'Sanchez', 'Chief Executive Officer', 16, NULL, '2001-02-15 00:00:00.000000', 125500.0000, 177),
	('Jason', 'Watters', 'Production Technician', 7, 135, '2011-02-15 00:00:00.000000', 9500.0000, 21),
	('Mark', 'Harrington', 'Quality Assurance Technician', 13, 41, '2001-02-16 00:00:00.000000', 10600.0000, 139),
	('Janeth', 'Esteves', 'Production Technician', 7, 159, '2012-02-16 00:00:00.000000', 10000.0000, 163),
	('Marc', 'Ingle', 'Production Technician', 7, 184, '2013-02-17 00:00:00.000000', 9500.0000, 230),
	('Gigi', 'Matthew', 'Research and Development Engineer', 6, 158, '2001-02-17 00:00:00.000000', 40900.0000, 23),
	('Paul', 'Singh', 'Production Technician', 7, 108, '2014-02-18 00:00:00.000000', 14000.0000, 16),
	('Frank', 'Lee', 'Production Technician', 7, 210, '2015-02-18 00:00:00.000000', 15000.0000, 263),
	('Francois', 'Ajenstat', 'Database Administrator', 11, 42, '2001-02-18 00:00:00.000000', 38500.0000, 127),
	('Diane', 'Tibbott', 'Production Technician', 7, 14, '2016-02-19 00:00:00.000000', 11000.0000, 140),
	('Jill', 'Williams', 'Marketing Specialist', 4, 6, '2071-02-19 00:00:00.000000', 14400.0000, 114),
	('Angela', 'Barbariol', 'Production Technician', 7, 38, '2001-02-21 00:00:00.000000', 11000.0000, 91),
	('Matthias', 'Berndt', 'Shipping and Receiving Clerk', 15, 85, '2001-02-21 00:00:00.000000', 9500.0000, 201),
	('Bryan', 'Baker', 'Production Technician', 7, 7, '2019-02-22 00:00:00.000000', 12500.0000, 166),
	('Jeff', 'Hay', 'Production Supervisor', 7, 21, '2010-02-22 00:00:00.000000', 25000.0000, 113),
	('Eugene', 'Zabokritski', 'Production Technician', 7, 184, '2001-02-22 00:00:00.000000', 9500.0000, 226),
	('Barbara', 'Decker', 'Production Technician', 7, 182, '2001-02-23 00:00:00.000000', 14000.0000, 219),
	('Chris', 'Preston', 'Production Technician', 7, 123, '2011-02-23 00:00:00.000000', 10000.0000, 279),
	('Sean', 'Chai', 'Document Control Assistant', 12, 90, '2001-02-23 00:00:00.000000', 10300.0000, 138),
	('Dan', 'Wilson', 'Database Administrator', 11, 42, '2012-02-23 00:00:00.000000', 38500.0000, 30),
	('Mark', 'McArthur', 'Production Technician', 7, 16, '2012-02-24 00:00:00.000000', 12500.0000, 186),
	('Bryan', 'Walton', 'Accounts Receivable Specialist', 10, 139, '2001-02-25 00:00:00.000000', 19000.0000, 175),
	('Houman', 'Pournasseh', 'Production Technician', 7, 74, '2001-02-26 00:00:00.000000', 11000.0000, 185),
	('Sairaj', 'Uddin', 'Scheduling Assistant', 8, 44, '2013-02-27 00:00:00.000000', 16000.0000, 190),
	('Michiko', 'Osada', 'Production Technician', 7, 173, '2001-02-27 00:00:00.000000', 9500.0000, 229),
	('Benjamin', 'Martin', 'Production Technician', 7, 184, '2014-02-28 00:00:00.000000', 9500.0000, 286),
	('Cynthia', 'Randall', 'Production Supervisor', 7, 21, '2015-02-28 00:00:00.000000', 25000.0000, 147),
	('Kathie', 'Flood', 'Production Technician', 7, 197, '2001-02-28 00:00:00.000000', 10000.0000, 100),
	('Britta', 'Simon', 'Production Technician', 7, 16, '2016-03-02 00:00:00.000000', 12500.0000, 95),
	('Brian', 'Lloyd', 'Production Technician', 7, 210, '2017-03-02 00:00:00.000000', 15000.0000, 288),
	('David', 'Liu', 'Accounts Manager', 10, 140, '2018-03-03 00:00:00.000000', 34700.0000, 119),
	('Laura', 'Norman', 'Chief Financial Officer', 16, 109, '2019-03-04 00:00:00.000000', 60100.0000, 215),
	('Michael', 'Patten', 'Production Technician', 7, 38, '2021-03-04 00:00:00.000000', 11000.0000, 96),
	('Andy', 'Ruth', 'Production Technician', 7, 135, '2020-03-04 00:00:00.000000', 9500.0000, 1),
	('Yuhong', 'Li', 'Production Supervisor', 7, 21, '2022-03-05 00:00:00.000000', 25000.0000, 242),
	('Robert', 'Rounthwaite', 'Production Technician', 7, 159, '2023-03-06 00:00:00.000000', 10000.0000, 280),
	('Andreas', 'Berglund', 'Quality Assurance Technician', 13, 41, '2001-03-06 00:00:00.000000', 10600.0000, 208),
	('Reed', 'Koch', 'Production Technician', 7, 184, '2020-03-06 00:00:00.000000', 9500.0000, 191),
	('Linda', 'Randall', 'Production Technician', 7, NULL, '2001-03-07 00:00:00.000000', 14000.0000, 260),
	('James', 'Hamilton', 'Vice President of Production', 7, 109, '2001-03-07 00:00:00.000000', 84100.0000, 158),
	('Ramesh', 'Meyyappan', 'Application Specialist', 11, 42, '2001-03-07 00:00:00.000000', 27400.0000, 130),
	('Stephanie', 'Conroy', 'Network Manager', 11, 42, '2021-03-08 00:00:00.000000', 39700.0000, 136),
	('Samantha', 'Smith', 'Production Technician', 7, 108, '2001-03-08 00:00:00.000000', 14000.0000, 14),
	('Tawana', 'Nusbaum', 'Production Technician', 7, 210, '2021-03-09 00:00:00.000000', 15000.0000, 237),
	('Denise', 'Smith', 'Production Technician', 7, 14, '2022-03-09 00:00:00.000000', 11000.0000, 143),
	('Hao', 'Chen', 'Human Resources Administrative Assistant', 9, 30, '2001-03-10 00:00:00.000000', 13900.0000, 135),
	('Alex', 'Nayberg', 'Production Technician', 7, 123, '2023-03-12 00:00:00.000000', 10000.0000, 174),
	('Eugene', 'Kogan', 'Production Technician', 7, 7, '2001-03-12 00:00:00.000000', 12500.0000, 71),
	('Brandon', 'Heidepriem', 'Production Technician', 7, 16, '2001-03-12 00:00:00.000000', 12500.0000, 189),
	('Dylan', 'Miller', 'Research and Development Manager', 6, 3, '2011-03-12 00:00:00.000000', 50500.0000, 141),
	('Shane', 'Kim', 'Production Supervisor', 7, 21, '2012-03-12 00:00:00.000000', 25000.0000, 20),
	('John', 'Chen', 'Production Technician', 7, 182, '2013-03-13 00:00:00.000000', 14000.0000, 65),
	('Karen', 'Berge', 'Document Control Assistant', 12, 90, '2014-03-13 00:00:00.000000', 10300.0000, 123),
	('Jose', 'Lugo', 'Production Technician', 7, 16, '2001-03-14 00:00:00.000000', 12500.0000, 271),
	('Mandar', 'Samant', 'Production Technician', 7, 74, '2001-03-14 00:00:00.000000', 11000.0000, 63),
	('Mikael', 'Sandberg', 'Buyer', 5, 274, '2015-03-14 00:00:00.000000', 18300.0000, 50),
	('Sameer', 'Tejani', 'Production Technician', 7, 74, '2016-03-15 00:00:00.000000', 11000.0000, 66),
	('Dragan', 'Tomic', 'Accounts Payable Specialist', 10, 139, '2001-03-15 00:00:00.000000', 19000.0000, 115),
	('Carol', 'Philips', 'Production Technician', 7, 173, '2001-03-16 00:00:00.000000', 9500.0000, 45),
	('Rob', 'Caron', 'Production Technician', 7, 87, '2017-03-17 00:00:00.000000', 15000.0000, 161),
	('Don', 'Hall', 'Production Technician', 7, 38, '2018-03-17 00:00:00.000000', 11000.0000, 59),
	('Alan', 'Brewer', 'Scheduling Assistant', 8, 44, '2019-03-17 00:00:00.000000', 16000.0000, 151),
	('David', 'Lawrence', 'Production Technician', 7, 184, '2001-03-18 00:00:00.000000', 9500.0000, 167),
	('Baris', 'Cetinok', 'Production Technician', 7, 87, '2001-03-19 00:00:00.000000', 15000.0000, 244),
	('Michael', 'Ray', 'Production Supervisor', 7, 21, '2020-03-19 00:00:00.000000', 25000.0000, 277),
	('Steve', 'Masters', 'Production Technician', 7, 18, '2001-03-19 00:00:00.000000', 12500.0000, 252),
	('Suchitra', 'Mohan', 'Production Technician', 7, 16, '2021-03-20 00:00:00.000000', 12500.0000, 31),
	('Karen', 'Berg', 'Application Specialist', 11, 42, '2022-03-20 00:00:00.000000', 27400.0000, 132),
	('Terrence', 'Earls', 'Production Technician', 7, 143, '2001-03-20 00:00:00.000000', 14000.0000, 34),
	('Barbara', 'Moreland', 'Accountant', 10, 139, '2023-03-22 00:00:00.000000', 26400.0000, 254),
	('Chad', 'Niswonger', 'Production Technician', 7, 38, '2010-03-22 00:00:00.000000', 11000.0000, 46),
	('Rostislav', 'Shabalin', 'Production Technician', 7, 135, '2001-03-23 00:00:00.000000', 9500.0000, 9),
	('Belinda', 'Newman', 'Production Technician', 7, 197, '2011-03-24 00:00:00.000000', 10000.0000, 43),
	('Katie', 'McAskill-White', 'Production Supervisor', 7, 21, '2001-03-24 00:00:00.000000', 25000.0000, 240),
	('Russell', 'King', 'Production Technician', 7, 184, '2012-03-25 00:00:00.000000', 9500.0000, 3),
	('Jack', 'Richins', 'Production Supervisor', 7, 21, '2013-03-25 00:00:00.000000', 25000.0000, 169),
	('Andrew', 'Hill', 'Production Supervisor', 7, 21, '2014-03-26 00:00:00.000000', 25000.0000, 97),
	('Nicole', 'Holliday', 'Production Technician', 7, 87, '2001-03-26 00:00:00.000000', 15000.0000, 238),
	('Frank', 'Miller', 'Production Technician', 7, 14, '2015-03-27 00:00:00.000000', 11000.0000, 289),
	('Peter', 'Connelly', 'Network Administrator', 11, 150, '2001-03-27 00:00:00.000000', 32500.0000, 137),
	('Anibal', 'Sousa', 'Production Technician', 7, 108, '2016-03-27 00:00:00.000000', 14000.0000, 183),
	('Ken', 'Myer', 'Production Technician', 7, 210, '2017-03-28 00:00:00.000000', 15000.0000, 105),
	('Grant', 'Culbertson', 'Human Resources Administrative Assistant', 9, 30, '2001-03-29 00:00:00.000000', 13900.0000, 117),
	('Michael', 'Entin', 'Production Technician', 7, 38, '2018-03-29 00:00:00.000000', 11000.0000, 195),
	('Lionel', 'Penuchot', 'Production Technician', 7, 159, '2019-03-30 00:00:00.000000', 10000.0000, 261),
	('Thomas', 'Michaels', 'Production Technician', 7, 7, '2001-03-30 00:00:00.000000', 12500.0000, 78),
	('Jimmy', 'Bischoff', 'Stocker', 15, 85, '2020-03-30 00:00:00.000000', 9000.0000, 206),
	('Michael', 'Vanderhyde', 'Production Technician', 7, 135, '2001-03-30 00:00:00.000000', 9500.0000, 90),
	('Lori', 'Kane', 'Production Supervisor', 7, 21, '2021-03-30 00:00:00.000000', 25000.0000, 198),
	('Arvind', 'Rao', 'Buyer', 5, 274, '2022-04-01 00:00:00.000000', 18300.0000, 212),
	('Stefen', 'Hesse', 'Production Technician', 7, 182, '2001-04-01 00:00:00.000000', 14000.0000, 68),
	('Hazem', 'Abolrous', 'Quality Assurance Manager', 13, 148, '2023-04-01 00:00:00.000000', 28800.0000, 148);
	
	
CREATE TABLE IF NOT EXISTS projects (
  "id" SERIAL PRIMARY KEY,
  project_name VARCHAR(70) NOT NULL,
  description  TEXT,
  start_date TIMESTAMP DEFAULT NULL,
  end_date TIMESTAMP DEFAULT NULL
);


INSERT INTO projects (
	project_name, description, start_date, end_date
) 
VALUES
	('Classic Vest', 'Research, design and development of Classic Vest. Light-weight, wind-resistant, packs to fit into a pocket.', NULL, NULL),
	('Cycling Cap', 'Research, design and development of Cycling Cap. Traditional style with a flip-up brim; one-size fits all.', '2001-09-01 08:00:00', '2003-10-01 12:00:00'),
	('Full-Finger Gloves', 'Research, design and development of Full-Finger Gloves. Synthetic palm, flexible knuckles, breathable mesh upper. Worn by the AWC team riders.', '2002-01-15 10:00:00', '2003-06-02 09:00:00'),
	('Half-Finger Gloves', 'Research, design and development of Half-Finger Gloves. Full padding, improved finger flex, durable palm, adjustable closure.', '2002-01-31 01:00:00', '2003-02-12 01:00:00'),
	('HL Mountain Frame', 'Research, design and development of HL Mountain Frame. Each frame is hand-crafted in our Bothell facility to the optimum diameter and wall-thickness required of a premium mountain frame. The heat-treated welded aluminum frame has a larger diameter tube that absorbs the bumps.', '2001-06-02 09:00:00', NULL),
	('HL Road Frame', 'Research, design and development of HL Road Frame. Our lightest and best quality aluminum frame made from the newest alloy; it is welded and heat-treated for strength. Our innovative design results in maximum comfort and performance.', NULL, NULL),
	('HL Touring Frame', 'Research, design and development of HL Touring Frame. The HL aluminum frame is custom-shaped for both good looks and strength; it will withstand the most rigorous challenges of daily riding. Men`s version.', NULL, NULL),
	('LL Mountain Frame', 'Research, design and development of LL Mountain Frame. Our best value utilizing the same, ground-breaking frame technology as the ML aluminum frame.', '2002-11-20 09:57:00', '2003-06-01 16:30:00'),
	('LL Road Frame', 'Research, design and development of LL Road Frame. The LL Frame provides a safe comfortable ride, while offering superior bump absorption in a value-priced aluminum frame.', '2001-06-01 09:20:00', '2003-03-16 10:05:00'),
	('LL Touring Frame', 'Research, design and development of LL Touring Frame. Lightweight butted aluminum frame provides a more upright riding position for a trip around town.  Our ground-breaking design provides optimum comfort.', '2005-08-20 16:34:00', NULL),
	('Long-Sleeve Logo Jersey', 'Research, design and development of Long-Sleeve Logo Jersey. Unisex long-sleeve AWC logo microfiber cycling jersey', '2001-06-01 00:00:00.000000', '2003-03-26 08:25:00'),
	('Men`s Bib-Shorts', 'Research, design and development of Men`s Bib-Shorts. Designed for the AWC team with stay-put straps, moisture-control, chamois padding, and leg grippers.', '2002-04-12 11:00:00', NULL),
	('Mountain-100', 'Research, design and development of Mountain-100. Top-of-the-line competition mountain bike. Performance-enhancing options include the innovative HL Frame, super-smooth front suspension, and traction for all terrain.', '2001-04-14 14:00:00', NULL),
	('Mountain', 'Research, design and development of Mountain-200. Serious back-country riding. Perfect for all levels of competition. Uses the same HL Frame as the Mountain-100.', '2002-03-05 00:00:00', '2004-03-11 10:32:00'),
	('Mountain-300', 'Research, design and development of Mountain-300. For true trail addicts.  An extremely durable bike that will go anywhere and keep you in control on challenging terrain - without breaking your budget.', '2002-05-10 07:00:00', '2003-06-06 07:00:00'),
	('Mountain', 'Research, design and development of Mountain-400-W. This bike delivers a high-level of performance on a budget. It is responsive and maneuverable, and offers peace-of-mind when you decide to go off-road.', NULL, NULL),
	('Mountain', 'Research, design and development of Mountain-500. Suitable for any type of riding, on or off-road. Fits any budget. Smooth-shifting with a comfortable ride.', '2002-05-11 09:57:00', '2003-06-30 00:00:00'),
	('Racing Socks', 'Research, design and development of Racing Socks. Thin, lightweight and durable with cuffs that stay up.', '2005-07-11 00:00:00', NULL),
	('Road', 'Research, design and development of Road-150. This bike is ridden by race winners. Developed with the Adventure Works Cycles professional race team, it has a extremely light heat-treated aluminum frame, and steering that allows precision control.', '2001-09-07 05:00:00', '2003-06-08 17:00:00'),
	('Road', 'Research, design and development of Road-250. Alluminum-alloy frame provides a light, stiff ride, whether you are racing in the velodrome or on a demanding club ride on country roads.', '2002-01-08 14:00:00', NULL),
	('Road', 'Research, design and development of Road-350-W. Cross-train, race, or just socialize on a sleek, aerodynamic bike designed for a woman.  Advanced seat technology provides comfort all day.', NULL, NULL),
	('Road', 'Research, design and development of Road-450. A true multi-sport bike that offers streamlined riding and a revolutionary design. Aerodynamic design lets you ride with the pros, and the gearing will conquer hilly roads.', '2001-09-16 12:00:00', NULL),
	('Road', 'Research, design and development of Road-550-W. Same technology as all of our Road series bikes, but the frame is sized for a woman.  Perfect all-around bike for road or racing.', '2002-06-09 10:00:00', '2003-06-10 08:00:00'),
	('Road', 'Research, design and development of Road-650. Value-priced bike with many features of our top-of-the-line models. Has the same light, stiff frame, and the quick acceleration we`re famous for.', '2001-06-10 01:00:00', NULL),
	('Road', 'Research, design and development of Road-750. Entry level adult bike; offers a comfortable ride cross-country or down the block. Quick-release hubs and rims.', '2002-01-10 09:57:00', '2003-05-11 20:00:00'),
	('Short-Sleeve Classic Jersey', 'Research, design and development of Short-Sleeve Classic Jersey. Short sleeve classic breathable jersey with superior moisture control, front zipper, and 3 back pockets.', NULL, NULL),
	('Sport-100', 'Research, design and development of Sport-100. Universal fit, well-vented, lightweight , snap-on visor.', '2001-06-01 00:00:00', '2003-10-18 00:00:00'),
	('Touring', 'Research, design and development of Touring-1000. Travel in style and comfort. Designed for maximum comfort and safety. Wide gear range takes on all hills. High-tech aluminum alloy construction provides durability without added weight.', '2002-11-11 09:57:00', '2003-06-12 00:00:00'),
	('Touring', 'Research, design and development of Touring-2000. The plush custom saddle keeps you riding all day,  and there`s plenty of space to add panniers and bike bags to the newly-redesigned carrier.  This bike has stability when fully-loaded.', '2002-11-20 11:57:00', NULL),
	('Touring', 'Research, design and development of Touring-3000. All-occasion value bike with our basic comfort and safety features. Offers wider, more stable tires for a ride around town or weekend trip.', '2002-09-11 09:57:00', '2003-12-22 02:00:00'),
	('Women`s Mountain Shorts', 'Research, design and development of Women`s Mountain Shorts. Heavy duty, abrasion-resistant shorts feature seamless, lycra inner shorts with anti-bacterial chamois for comfort.', NULL, NULL),
	('Women`s Tights', 'Research, design and development of Women`s Tights. Warm spandex tights for winter riding; seamless chamois construction eliminates pressure points.', '2002-06-01 00:00:00', '2003-12-18 08:00:00'),
	('Mountain-400', 'Research, design and development of Mountain-400. Suitable for any type of off-road trip. Fits any budget.', '2001-06-01 16:00:00', '2004-06-01 05:00:00'),
	('Road-550', 'Research, design and development of Road-550. Same technology as all of our Road series bikes.  Perfect all-around bike for road or racing.', '2002-06-12 07:00:00', NULL),
	('Road-350', 'Research, design and development of Road-350. Cross-train, race, or just socialize on a sleek, aerodynamic bike.  Advanced seat technology provides comfort all day.', '2002-12-11 09:57:00', '2003-03-12 03:00:00'),
	('LL Mountain Front Wheel', 'Research, design and development of LL Mountain Front Wheel. Replacement mountain wheel for entry-level rider.', '2002-11-12 09:57:00', '2005-06-01 21:00:00'),
	('Touring', 'Research, design and development of Touring Rear Wheel. Excellent aerodynamic rims guarantee a smooth ride.', '2005-05-01 16:34:00', NULL),
	('Touring', 'Research, design and development of Touring Front Wheel. Aerodynamic rims for smooth riding.', '2005-05-06 16:45:00', NULL),
	('Mountain Front Wheel', 'Research, design and development of ML Mountain Front Wheel. Replacement mountain wheel for the casual to serious rider.', '2002-06-01 01:20:00', '2003-06-01 16:30:00'),
	('Mountain Front Wheel', 'Research, design and development of HL Mountain Front Wheel. High-performance mountain replacement wheel.', '2002-06-01 00:00:00', '2003-05-14 12:15:00'),
	('LL Touring Handlebars', 'Research, design and development of LL Touring Handlebars. Unique shape reduces fatigue for entry level riders.', '2005-05-10 16:34:000', NULL),
	('HL Touring Handlebars', 'Research, design and development of HL Touring Handlebars. A light yet stiff aluminum bar for long distance riding.', NULL, NULL),
	('Road', 'Research, design and development of LL Road Front Wheel. Replacement road front wheel for entry-level cyclist.', '2002-01-16 10:00:00', '2003-01-26 22:00:00'),
	('Road', 'Research, design and development of ML Road Front Wheel. Sturdy alloy features a quick-release hub.', '2002-01-15 00:00:00', '2003-06-07 23:00:00'),
	('Road', 'Research, design and development of HL Road Front Wheel. Strong wheel with double-walled rim.', '2002-06-04 00:00:00', '2003-06-01 00:00:00'),
	('Mountain Handlebars', 'Research, design and development of LL Mountain Handlebars. All-purpose bar for on or off-road.', '2002-06-08 03:00:00', '2003-01-13 18:00:00'),
	('Touring', 'Research, design and development of Touring Pedal. A stable pedal for all-day riding.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Handlebars. Tough aluminum alloy bars for downhill.', '2007-06-01 00:00:00', '2008-06-01 20:10:00'),
	('Mountain Handlebars', 'Research, design and development of HL Mountain Handlebars. Flat bar strong enough for the pro circuit.', '2010-04-16 00:00:00', NULL),
	('Road', 'Research, design and development of LL Road Handlebars. Unique shape provides easier reach to the levers.', '2011-07-07 10:00:00', '2013-06-01 11:00:00'),
	('Road', 'Research, design and development of ML Road Handlebars. Anatomically shaped aluminum tube bar will suit all riders.', NULL, NULL),
	('Road', 'Research, design and development of HL Road Handlebars. Designed for racers; high-end anatomically shaped bar from aluminum alloy.', '2022-06-01 10:00:00', NULL),
	('LL Headset', 'Research, design and development of LL Headset. Threadless headset provides quality at an economical price.', '2022-06-07 00:00:00', '2023-06-09 00:00:00'),
	('ML Headset', 'Research, design and development of ML Headset. Sealed cartridge keeps dirt out.', '2002-06-01 00:00:00', '2023-06-01 02:00:00'),
	('HL Headset', 'Research, design and development of HL Headset. High-quality 1" threadless headset with a grease port for quick lubrication.', '2012-06-01 03:00:00', '2023-01-18 05:15:00'),
	('Road', 'Research, design and development of ML Road Rear Wheel. Aluminum alloy rim with stainless steel spokes; built for speed.', '2012-06-01 01:00:00', '2013-06-10 09:00:00'),
	('Road', 'Research, design and development of HL Road Rear Wheel. Strong rear wheel with double-walled rim.', '2002-06-01 00:00:00', '2013-01-16 09:00:00'),
	('LL Mountain Seat/Saddle 2', 'Research, design and development of LL Mountain Seat/Saddle 2. Synthetic leather. Features gel for increased comfort.', NULL, NULL),
	('Mountain', 'Research, design and development of ML Mountain Seat/Saddle 2. Designed to absorb shock.', '2014-06-01 00:00:00', '2015-03-11 10:32:00'),
	('LL Fork', 'Research, design and development of LL Fork. Stout design absorbs shock and offers more precise steering.', '2012-06-01 00:00:00', NULL),
	('ML Fork', 'Research, design and development of ML Fork. Composite road fork with an aluminum steerer tube.', NULL, NULL),
	('HL Fork', 'Research, design and development of HL Fork. High-performance carbon road fork with curved legs.', '2017-06-01 07:00:00', '2018-12-01 00:00:00'),
	('Hydration Pack', 'Research, design and development of Hydration Pack. Versatile 70 oz hydration pack offers extra storage, easy-fill access, and a waist belt.', NULL, NULL),
	('Taillight', 'Research, design and development of Taillight. Affordable light for safe night riding - uses 3 AAA batteries', '2020-06-01 21:00:00', '2023-06-02 20:00:00'),
	('Headlights - Dual-Beam', 'Research, design and development of Headlights - Dual-Beam. Rechargeable dual-beam headlight.', '2016-06-01 07:00:00', NULL),
	('Headlights - Weatherproof', 'Research, design and development of Headlights - Weatherproof. Rugged weatherproof headlight.', '2018-06-01 03:00:00', '2019-06-09 04:00:00'),
	('Water Bottle', 'Research, design and development of Water Bottle. AWC logo water bottle - holds 30 oz; leak-proof.', '2023-06-01 12:00:00', NULL),
	('Mountain Bottle Cage', 'Research, design and development of Mountain Bottle Cage. Tough aluminum cage holds bottle securly on tough terrain.', '2014-06-01 15:00:00', NULL),
	('Road Bottle Cage', 'Research, design and development of Road Bottle Cage. Aluminum cage is lighter than our mountain version; perfect for long distance trips.', '2004-02-21 16:00:00', NULL),
	('Patch kit', 'Research, design and development of Patch kit. Includes 8 different size patches, glue and sandpaper.', '2016-10-15 19:00:00', NULL),
	('Cable Lock', 'Research, design and development of Cable Lock. Wraps to fit front and rear tires, carrier and 2 keys included.', '2019-06-01 20:00:00', '2019-10-10 09:00:000'),
	('Minipump', 'Research, design and development of Minipump. Designed for convenience. Fits in your pocket. Aluminum barrel. 160psi rated.', '2020-06-01 05:00:00', '2023-06-01 10:00:00'),
	('Mountain', 'Research, design and development of Mountain Pump. Simple and light-weight. Emergency patches stored in handle.', '2022-06-06 08:00:00', '2022-06-12 04:00:00'),
	('Hitch Rack - 4-Bike', 'Research, design and development of Hitch Rack - 4-Bike. Carries 4 bikes securely; steel construction, fits 2" receiver hitch.', NULL, NULL),
	('Bike Wash', 'Research, design and development of Bike Wash. Washes off the toughest road grime; dissolves grease, environmentally safe. 1-liter bottle.', '2022-08-01 06:00:00', NULL),
	('Touring-Panniers', 'Research, design and development of Touring-Panniers. Durable, water-proof nylon construction with easy access. Large enough for weekend trips.', '2021-06-08 07:00:00', NULL),
	('Fender Set - Mountain', 'Research, design and development of Fender Set - Mountain. Clip-on fenders fit most mountain bikes.', '2023-06-01 09:00:00', NULL),
	('All-Purpose Bike Stand', 'Research, design and development of All-Purpose Bike Stand. Perfect all-purpose bike stand for working on your bike at home. Quick-adjusting clamps and steel construction.', NULL, NULL),
	('Rear Derailleur', 'Research, design and development of Rear Derailleur. Wide-link design.', NULL, NULL);


SELECT 
	COUNT(CASE WHEN department_id = 1 THEN 1 END) AS "Engineering",
	COUNT(CASE WHEN department_id = 2 THEN 1 END) AS "Tool Design",
	COUNT(CASE WHEN department_id = 3 THEN 1 END) AS "Sales",
	COUNT(CASE WHEN department_id = 4 THEN 1 END) AS "Marketing",
	COUNT(CASE WHEN department_id = 5 THEN 1 END) AS "Purchasing",
	COUNT(CASE WHEN department_id = 6 THEN 1 END) AS "Research and Development",
	COUNT(CASE WHEN department_id = 7 THEN 1 END) AS "Production"
FROM
	employees;

UPDATE employees
SET 
    salary = CASE 
                WHEN hire_date < '2015-01-16' THEN salary + 2500
                WHEN hire_date < '2020-03-04' THEN salary + 1500
                ELSE salary
             END,
    job_title = CASE 
                   WHEN hire_date < '2015-01-16' THEN CONCAT('Senior ', job_title)
                   WHEN hire_date < '2020-03-04' THEN CONCAT('Mid-', job_title)
                   ELSE job_title
                END;

SELECT
	job_title,
	CASE
		WHEN AVG(salary) > 45800 THEN 'Good'
		WHEN AVG(salary) < 27500 THEN 'Need Improvement'
		ELSE 'Medium'
	END AS category
FROM 
	employees
GROUP BY
	job_title
ORDER BY
	category,
	job_title;

SELECT
    project_name,
    CASE
        WHEN start_date IS NULL AND end_date IS NULL THEN 'Ready for development'
        WHEN start_date IS NOT NULL AND end_date IS NULL THEN 'In Progress'
        ELSE 'Done'
    END AS project_status
FROM projects
WHERE project_name LIKE '%Mountain%';

SELECT
	department_id,
	COUNT(*) AS num_employes,
	CASE
		WHEN AVG(salary) > 50000 THEN 'Above average'
		WHEN AVG(salary) < 50000 THEN 'Below average'
	END AS salary_level	
FROM
	employees
GROUP BY
	department_id
HAVING 
	AVG(salary) > 30000
ORDER BY
	department_id;

/*
SELECT
	department_id,
	COUNT(department_id) AS num_employees,
	CASE 
		WHEN AVG(salary) > 50000 THEN 'Above average'
		ELSE 'Below average'
	END
FROM 
	employees
GROUP BY
	department_id
HAVING
	AVG(salary) > 30000
ORDER BY
	department_id ASC;
*/	

CREATE VIEW view_performance_rating AS
SELECT
    first_name,
    last_name,
    job_title,
    salary,
    department_id,
    CASE
        WHEN salary >= 25000 AND job_title LIKE 'Senior%' THEN 'High-performing Senior'
        WHEN salary >= 25000 AND job_title NOT LIKE 'Senior%' THEN 'High-performing Employee'
        ELSE 'Average-performing'
    END AS performance_rating
FROM employees;


SELECT * FROM view_performance_rating;
/*
CREATE VIEW
	view_performance_rating
AS
SELECT
	first_name,
	last_name,
	job_title,
	salary,
	department_id,
	CASE 
		WHEN salary >= 25000 THEN 
			CASE 
				WHEN job_title LIKE 'Senior%' THEN 'High-performing Senior'
				ELSE 'High-performing Employee'
			END
		ELSE 'Average-performing'
	END AS performance_rating
FROM 
	employees
*/

CREATE TABLE employees_projects (
    id INT PRIMARY KEY,
    employee_id INT,
    project_id INT,
    FOREIGN KEY (employee_id) REFERENCES employees(id),
    FOREIGN KEY (project_id) REFERENCES projects(id)
);


SELECT *
FROM
	departments AS d
JOIN
	employees AS e 
ON
	d.id = e.department_id;