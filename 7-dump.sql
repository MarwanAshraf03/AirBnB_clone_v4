-- -- MySQL dump 10.13  Distrib 5.7.8-rc, for Linux (x86_64)
-- --
-- -- Host: localhost    Database: hbnb_dev_db
-- -- ------------------------------------------------------
-- -- Server version	5.7.8-rc

-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8 */;
-- /*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
-- /*!40103 SET TIME_ZONE='+00:00' */;
-- /*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
-- /*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
-- /*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- /*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- -- Drop database
-- DROP DATABASE IF EXISTS hbnb_dev_db;

-- -- Create database + user if doesn't exist
-- CREATE DATABASE IF NOT EXISTS hbnb_dev_db;
-- CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost';
-- SET PASSWORD FOR 'hbnb_dev'@'localhost' = 'hbnb_dev_pwd';
-- GRANT ALL ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';
-- GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
-- FLUSH PRIVILEGES;

USE hbnb_dev_db;

-- Inserting dummy data into the 'amenities' table
INSERT INTO amenities (id, name, created_at, updated_at) VALUES
('85f979ad-a345-4190-9d1b-719bb3c642ba', 'Free Wi-Fi', NOW(), NOW()),
('85f979ad-a345-4290-9d1b-719bb3c642ba', 'Swimming Pool', NOW(), NOW()),
('85f979ad-a345-4390-9d1b-719bb3c642ba', 'Parking', NOW(), NOW());

-- Inserting dummy data into the 'users' table
INSERT INTO users (id, email, password, first_name, last_name, created_at, updated_at) VALUES
('85f979ad-a345-4990-9d1b-719bb3c642ba', 'john.doe@example.com', 'password123', 'John', 'Doe', NOW(), NOW()),
('85f979ad-a345-4110-9d1b-719bb3c642ba', 'jane.smith@example.com', 'password456', 'Jane', 'Smith', NOW(), NOW());

-- Inserting dummy data into the 'states' table
INSERT INTO states (id, name, created_at, updated_at) VALUES
('85f979ad-a345-4790-9d1b-719bb3c642ba', 'California', NOW(), NOW()),
('85f979ad-a345-4890-9d1b-719bb3c642ba', 'New York', NOW(), NOW());

-- Inserting dummy data into the 'cities' table
INSERT INTO cities (id, name, state_id, created_at, updated_at) VALUES
('85f979ad-a345-4490-9d1b-719bb3c642ba', 'San Francisco', '85f979ad-a345-4790-9d1b-719bb3c642ba', NOW(), NOW()),
('85f979ad-a345-4590-9d1b-719bb3c642ba', 'Los Angeles', '85f979ad-a345-4790-9d1b-719bb3c642ba', NOW(), NOW()),
('85f979ad-a345-4690-9d1b-719bb3c642ba', 'New York', '85f979ad-a345-4890-9d1b-719bb3c642ba', NOW(), NOW());

-- Inserting dummy data into the 'places' table
INSERT INTO places (id, name, description, number_rooms, number_bathrooms, max_guest, price_by_night, latitude, longitude, city_id, user_id, created_at, updated_at) VALUES
('85f979ad-a345-4120-9d1b-719bb3c642ba', 'Cozy Cottage', 'A cozy cottage in the woods', 2, 1, 4, 120, 37.7749, -122.4194, '85f979ad-a345-4490-9d1b-719bb3c642ba', '85f979ad-a345-4990-9d1b-719bb3c642ba', NOW(), NOW()),
('85f979ad-a345-4130-9d1b-719bb3c642ba', 'Modern Apartment', 'A modern apartment in the city', 3, 2, 6, 200, 34.0522, -118.2437, '85f979ad-a345-4590-9d1b-719bb3c642ba', '85f979ad-a345-4110-9d1b-719bb3c642ba', NOW(), NOW());

-- Inserting dummy data into the 'reviews' table
INSERT INTO reviews (id, text, place_id, user_id, created_at, updated_at) VALUES
('85f979ad-a345-4140-9d1b-719bb3c642ba', 'Great place, very clean!', '85f979ad-a345-4120-9d1b-719bb3c642ba', '85f979ad-a345-4110-9d1b-719bb3c642ba', NOW(), NOW()),
('85f979ad-a345-4150-9d1b-719bb3c642ba', 'Amazing location, would visit again.', '85f979ad-a345-4130-9d1b-719bb3c642ba', '85f979ad-a345-4990-9d1b-719bb3c642ba', NOW(), NOW());

-- Inserting dummy data into the 'place_amenity' table
INSERT INTO place_amenity (place_id, amenity_id) VALUES
('85f979ad-a345-4120-9d1b-719bb3c642ba', '85f979ad-a345-4190-9d1b-719bb3c642ba'),
('85f979ad-a345-4120-9d1b-719bb3c642ba', '85f979ad-a345-4290-9d1b-719bb3c642ba'),
('85f979ad-a345-4130-9d1b-719bb3c642ba', '85f979ad-a345-4190-9d1b-719bb3c642ba'),
('85f979ad-a345-4130-9d1b-719bb3c642ba', '85f979ad-a345-4390-9d1b-719bb3c642ba');