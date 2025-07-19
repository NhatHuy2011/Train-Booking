create database trainbooking;

use trainbooking;

create table stations (
	station_id int auto_increment primary key,
    station_name varchar(20) not null,
    station_location varchar(20) not null
);

INSERT INTO stations (station_name, station_location) VALUES ('Hà Nội', 'Miền Bắc');
INSERT INTO stations (station_name, station_location) VALUES ('Hải Phòng', 'Miền Bắc');
INSERT INTO stations (station_name, station_location) VALUES ('Lào Cai', 'Miền Bắc');
INSERT INTO stations (station_name, station_location) VALUES ('Thanh Hóa', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Vinh', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Đồng Hới', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Huế', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Đà Nẵng', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Quy Nhơn', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Nha Trang', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Phan Thiết', 'Miền Trung');
INSERT INTO stations (station_name, station_location) VALUES ('Sài Gòn', 'Miền Nam');
INSERT INTO stations (station_name, station_location) VALUES ('Biên Hòa', 'Miền Nam');
INSERT INTO stations (station_name, station_location) VALUES ('Bình Dương', 'Miền Nam');

create table trains (
    train_id int auto_increment primary key,
    train_name varchar(50) not null,
    train_capacity int not null,
    train_priority_level enum('LOW', 'NORMAL', 'HIGH')
);

INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE1', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE2', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE3', 450, 'NORMAL');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE4', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE5', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('SE6', 450, 'NORMAL');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('TN1', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('TN2', 500, 'HIGH');
INSERT INTO trains (train_name, train_capacity, train_priority_level) VALUES ('TN3', 450, 'NORMAL');

create table carriages (
    carriage_id int auto_increment primary key,
    train_id int not null,
    carriage_name varchar(50) not null,
    carriage_type enum('NGOIMEM', 'GIUONGNAM4', 'GIUONGNAM6'),
    foreign key (train_id) references trains(train_id)
);

INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (1, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (1, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (1, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (1, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (2, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (2, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (2, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (2, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (3, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (3, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (3, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (3, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (4, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (4, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (4, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (4, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (5, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (5, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (5, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (5, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (6, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (6, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (6, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (6, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (7, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (7, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (7, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (7, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (8, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (8, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (8, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (8, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (9, 'Toa 1: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (9, 'Toa 2: Ngoi Mem Dieu Hoa', 'NGOIMEM');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (9, 'Toa 3: Giuong Nam Khoang 4', 'GIUONGNAM4');
INSERT INTO carriages (train_id, carriage_name, carriage_type) VALUES (9, 'Toa 4: Giuong Nam Khoang 6', 'GIUONGNAM6');

create table seats (
	seat_id int auto_increment primary key,
    carriage_id int not null,
    seat_number int not null,
    seat_type enum ('NGOIMEM', 'TANG1', 'TANG2', 'TANG3'),
    is_head bool not null
);

#----------------------------------------Tau 1----------------------------------------------#
#Toa 1 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (1, 12, 'NGOIMEM', 0);

#Toa 2 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (2, 12, 'NGOIMEM', 0);

#Toa 3 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (3, 8, 'TANG2', 0);

#Toa 4 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 8, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 9, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 10, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 11, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (4, 12, 'TANG3', 0);

#----------------------------------------Tau 2----------------------------------------------#
#Toa 1 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (5, 12, 'NGOIMEM', 0);

#Toa 2 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (6, 12, 'NGOIMEM', 0);

#Toa 3 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (7, 8, 'TANG2', 0);

#Toa 4 
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 8, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 9, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 10, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 11, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (8, 12, 'TANG3', 0);

#----------------------------------------Tau 3----------------------------------------------#
#Toa 1
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (9, 12, 'NGOIMEM', 0);

#Toa 2
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (10, 12, 'NGOIMEM', 0);

#Toa 3
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (11, 8, 'TANG2', 0);

#Toa 4
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 8, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 9, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 10, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 11, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (12, 12, 'TANG3', 0);

#----------------------------------------Tau 4----------------------------------------------#
#Toa 1
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (13, 12, 'NGOIMEM', 0);

#Toa 2
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 1, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 2, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 3, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 4, 'NGOIMEM', 1);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 5, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 6, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 7, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 8, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 9, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 10, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 11, 'NGOIMEM', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (14, 12, 'NGOIMEM', 0);

#Toa 3
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (15, 8, 'TANG2', 0);

#Toa 4
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 1, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 2, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 3, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 4, 'TANG1', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 5, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 6, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 7, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 8, 'TANG2', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 9, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 10, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 11, 'TANG3', 0);
INSERT INTO seats (carriage_id, seat_number, seat_type, is_head) VALUES (16, 12, 'TANG3', 0);

create table schedules (
	schedule_id int auto_increment primary key,
    train_id int not null,
    departure_station_id int not null,
    arrival_station_id int not null,
    departure_time datetime not null,
    arrival_time datetime not null,
    base_price int not null,
    foreign key (train_id) references trains(train_id),
    foreign key (departure_station_id) references stations(station_id),
    foreign key (arrival_station_id) references stations(station_id)
);

INSERT INTO schedules (train_id, departure_station_id, arrival_station_id, departure_time, arrival_time, base_price) 
VALUES (1, 1, 3, '2025-08-01 06:00:00', '2025-08-01 08:00:00', 100000);
INSERT INTO schedules (train_id, departure_station_id, arrival_station_id, departure_time, arrival_time, base_price) 
VALUES (2, 1, 3, '2025-08-01 09:00:00', '2025-08-01 11:00:00', 100000);
INSERT INTO schedules (train_id, departure_station_id, arrival_station_id, departure_time, arrival_time, base_price) 
VALUES (3, 1, 3, '2025-08-01 12:00:00', '2025-08-01 15:00:00', 85000);
INSERT INTO schedules (train_id, departure_station_id, arrival_station_id, departure_time, arrival_time, base_price) 
VALUES (4, 1, 3, '2025-08-01 16:00:00', '2025-08-01 18:00:00', 1200000);
	
create table seats_status (
	seat_status_id int auto_increment primary key,
    schedule_id int not null,
    seat_id int not null,
	seat_status enum('AVAILABLE', 'OCCUPIED', 'INPROCESS'),
    last_updated datetime not null,
    foreign key (schedule_id) references schedules(schedule_id),
    foreign key (seat_id) references seats(seat_id)
);
INSERT INTO seats_status (schedule_id, seat_id, seat_status, last_updated)
VALUES (1, 1, 'AVAILABLE', '2025-07-17 09:00:00');
INSERT INTO seats_status (schedule_id, seat_id, seat_status, last_updated)
VALUES (1, 2, 'OCCUPIED', '2025-07-17 09:05:00');
INSERT INTO seats_status (schedule_id, seat_id, seat_status, last_updated)
VALUES (2, 3, 'AVAILABLE', '2025-07-17 09:10:00');
INSERT INTO seats_status (schedule_id, seat_id, seat_status, last_updated)
VALUES (2, 4, 'OCCUPIED', '2025-07-17 09:15:00');

create table bookings (
	booking_id int auto_increment primary key,
    full_name varchar(100) not null,
    user_type enum('NGUOILON', 'TREEM', 'SINHVIEN', 'VIP') not null,
    citizen_identify varchar(20) not null,
    email varchar(100) not null,
    phone varchar(20),
    booking_time datetime not null,
    total_amount int not null,
    booking_status enum('PENDING', 'SUCCESS', 'CANCEL', 'FAIL'),
    payment_method enum('VNPAY', 'MOMO', 'ZALOPAY')
);

create table tickets(
	ticket_id int auto_increment primary key,
    booking_id int not null,
    schedule_id int not null,
    seat_id int not null,
    price int not null,
    foreign key (booking_id) references bookings(booking_id),
    foreign key (schedule_id) references schedules(schedule_id),
    foreign key (seat_id) references seats(seat_id)	
)






