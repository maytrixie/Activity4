CREATE DATABASE veterinary;
CREATE TABLE owners(
    ownerid INT PRIMARY KEY,
    ofirstname VARCHAR(50),
    olastname VARCHAR(50),
    address VARCHAR(100),
    phone VARCHAR(15),
    email VARCHAR(100)
);

CREATE TABLE animals (
    animalid INT PRIMARY KEY,
    name VARCHAR(50),
    species VARCHAR(50),
    breed VARCHAR(50),
    dateofbirth DATE,
    gender VARCHAR(10),
    color VARCHAR(50),
    ownerid INT,
    FOREIGN KEY (ownerid) REFERENCES owners(ownerid)
);
CREATE TABLE appointments (
    appointid INT PRIMARY KEY,
    animalid INT,
    appointdate DATE,
    reason VARCHAR(255),
    FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE doctors(
   doctorid INT PRIMARY KEY,
   dfirstname VARCHAR(50),
   dlastname VARCHAR(50),
   speciality VARCHAR(100),
   phone VARCHAR(15),
   email VARCHAR(100),
);

CREATE TABLE invoices (
   invoiceid INT PRIMARY KEY,
   appointid INT FOREIGN KEY,
   totalamount NUMERIC(10,2),
   paymentdate TIME,
   FOREIGN KEY (animalid) REFERENCES animals(animalid)
);

CREATE TABLE medicalrecords(
   recordid PRIMARY KEY,
   animalid INT,
   recorddate TIMESTAMP,
   doctorid INT,
   diagnosis TEXT,
   prescription TEXT,
   notes TEXT,
   FOREIGN KEY (animalid) REFERENCES animals(animalid),
   FOREIGN KEY (doctorid) REFERENCES doctors(doctorid)
);
INSERT INTO owners (ownerid, ofirstname, Olastname, address, phone, email)

  (1,'Juan','Dela Cruz','123 Main St.Manila','123-456-7890','juan@example.com'),
  (2,'Maria','Santos','456 Elm St.Quezon City','987-654-3210','maria@exapmle.com'),
  (3,'Antonio','Gonzales','789 Oak St.Cebu','555-123-4567','antonio@example.com'),
  (4,'Elena','Roderiguez','345 Pine St. Davao','777-888-9999', 'elena@example.com'),
  (5,'Ricardo','Lim','987 Cedar St.Makati','222-333-4444','rocardo@example.com'),
  (6,'Isabel','Reyes','111 Acacia St.Pasig','999-000-1111','isabel@example.com'),
  (7,'Luis','Torres','555 Maple St.Mandaluyong','123-555-7777','luis@example.com'),
  (8,'Carmen','Fernandez','222 Birch St.Taguig','333-222-1111','carmen@example.com'),
  (9,'Pedro','Santillan','888 Spruce St. Bacolod','888-777-6666','pedro@example.com'),
  (10,'Sofia','Villanueva','777 Walnut St. Iloilo','111-999-3333','sofia@example.com');