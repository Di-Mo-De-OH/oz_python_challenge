-- petowners 테이블
CREATE TABLE petowners(
	owner_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    contact VARCHAR(30) NOT NULL
);
-- pets 테이블
CREATE TABLE pets(
    pet_id INT AUTO_INCREMENT PRIMARY KEY,
    owner_id INT NOT NULL,
    FOREIGN KEY (owner_id) REFERENCES petowners(owner_id),
    name VARCHAR(20) NOT NULL,
    species VARCHAR(20) NOT NULL,
    breed VARCHAR(20) NOT NULL
    
);
-- rooms 테이블
CREATE TABLE rooms(
	room_id INT AUTO_INCREMENT PRIMARY KEY,
    roomnumber INT UNIQUE,
    roomtype VARCHAR(20),
    pricepernight DECIMAL(9,2) NOT NULL
);
-- reservations 테이블
CREATE TABLE reservations(
	reservation_id INT AUTO_INCREMENT PRIMARY KEY,
	pet_id INT NOT NULL,
    FOREIGN KEY (pet_id) REFERENCES pets(pet_id),
    room_id INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms(room_id),
    startdate DATETIME NOT NULL,
    enddate DATETIME NOT NULL
    
);
-- services 테이블
CREATE TABLE services(
	service_id INT AUTO_INCREMENT PRIMARY KEY,
    reservation_id INT NOT NULL,
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id),
    servicename VARCHAR(30) NOT NULL,
    serviceprice DECIMAL(8,2) NOT NULL
);


















