CREATE DATABASE IF NOT EXISTS stickerdb;
USE stickerdb;

DROP TABLE IF EXISTS student;
CREATE TABLE student(
	matric_id int(11) NOT NULL,
    password varchar(255) NOT NULL,
    name varchar(50) NOT NULL,
    sticker_id varchar(10) NOT NULL,
    license_expired DATE
 
    
);

DROP TABLE IF EXISTS admin;
CREATE TABLE admin(
	matric_id int(11) NOT NULL,
    password varchar(255) NOT NULL

);

DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle(
	matric_id int(11) NOT NULL,
    vehicle_type varchar(20) NOT NULL,
    vehicle_colour varchar(20) NOT NULL,
    vehicle_brand varcHar(15) NOT NULL,
    plate_no varchar(10) NOT NULL,
    insurance_expired DATE

);

INSERT INTO admin (matric_id, password) VALUES
(890,'admin890');


INSERT INTO student (matric_id, password, name, sticker_id, license_expired) VALUES
('120457', 'password1', 'Ahmad Zulkifli', 'PK-1234', '2025-07-15'),
('122306', 'password2', 'Nur Aina Farhana', 'PK-3456', '2025-09-23'),
('120789', 'password3', 'Muhammad Faris', 'PK-5678', '2025-11-10'),
('123002', 'password4', 'Siti Nur Afiqah', 'PK-8901', '2025-10-30'),
('121453', 'password5', 'Hafizul Hakimi', 'PK-2345', '2025-12-18'),
('120954', 'password6', 'Aishah Salsabila', 'PK-6789', '2025-11-05'),
('121678', 'password7', 'Abdul Rahman', 'PK-9101', '2025-08-29'),
('122811', 'password8', 'Zulaikha Nurul', 'PK-1122', '2025-12-02'),
('123145', 'password9', 'Faisal Irfan', 'PK-3344', '2025-09-08'),
('121002', 'password10', 'Khairul Azwan', 'PK-5566', '2025-10-17'),
('120889', 'password11', 'Noor Izati', 'PK-7788', '2025-07-25'),
('123331', 'password12', 'Amirul Ashraf', 'PK-9900', '2025-06-13'),
('120233', 'password13', 'Farah Izzati', 'PK-1112', '2025-11-29'),
('122009', 'password14', 'Daniel Arif', 'PK-2233', '2025-08-08'),
('121545', 'password15', 'Nurul Hidayah', 'PK-4455', '2025-06-28'),
('120678', 'password16', 'Adam Hazim', 'PK-6677', '2025-09-16'),
('122897', 'password17', 'Liyana Fatin', 'PK-8899', '2025-08-12'),
('121143', 'password18', 'Azhar Haziq', 'PK-1123', '2025-12-11'),
('123876', 'password19', 'Shafiq Syahmi', 'PK-3345', '2025-10-25'),
('120212', 'password20', 'Sofia Aiman', 'PK-5567', '2025-07-11'),
('121934', 'password21', 'Zakwan Danial', 'PK-7789', '2025-09-19'),
('122578', 'password22', 'Aina Adriana', 'PK-9901', '2025-11-20'),
('120899', 'password23', 'Iskandar Ikmal', 'PK-1235', '2025-12-28'),
('121077', 'password24', 'Nur Syahirah', 'PK-3457', '2025-10-15'),
('120354', 'password25', 'Hazim Aqil', 'PK-5679', '2025-09-30'),
('123041', 'password26', 'Afiq Hidayat', 'PK-8902', '2025-07-05'),
('120432', 'password27', 'Nabilah Aqilah', 'PK-2346', '2025-08-24'),
('120902', 'password28', 'Aqilah Nuraini', 'PK-9103', '2025-08-09'),
('122398', 'password29', 'Syafiq Ismail', 'PK-1124', '2025-07-14'),
('123155', 'password30', 'Nurul Fatini', 'PK-2234', '2025-11-27'),
('120489', 'password31', 'Faris Ikhwan', 'PK-4456', '2025-09-04'),
('121245', 'password32', 'Liyana Sofia', 'PK-6678', '2025-07-30'),
('123078', 'password33', 'Amirul Haziq', 'PK-8890', '2025-10-12'),
('121002', 'password34', 'Sofea Adilah', 'PK-1125', '2025-08-06'),
('120543', 'password35', 'Fahmi Zainal', 'PK-3347', '2025-06-11'),
('122611', 'password36', 'Liyana Hazirah', 'PK-5568', '2025-12-24'),
('120799', 'password37', 'Arif Danial', 'PK-7790', '2025-08-19'),
('123456', 'password38', 'Hana Azira', 'PK-9902', '2025-09-22'),
('120324', 'password39', 'Amir Fahmi', 'PK-1236', '2025-07-18'),
('121089', 'password40', 'Nadhirah Zulaika', 'PK-3458', '2025-12-30'),
('123211', 'password41', 'Khairul Syazwan', 'PK-5670', '2025-10-05'),
('120987', 'password42', 'Shafiqah Amirah', 'PK-8903', '2025-07-27'),
('121451', 'password43', 'Ahmad Rafiqi', 'PK-2347', '2025-11-02'),
('122785', 'password44', 'Nurul Ain', 'PK-6781', '2025-06-28'),
('120111', 'password45', 'Haziq Aiman', 'PK-9104', '2025-09-09'),
('123348', 'password46', 'Syafiq Radzi', 'PK-1126', '2025-07-04'),
('121023', 'password47', 'Nurul Izzah', 'PK-3348', '2025-12-13'),
('120478', 'password48', 'Faizal Hakim', 'PK-5569', '2025-10-19'),
('121779', 'password49', 'Azhar Afiq', 'PK-7791', '2025-08-30'),
('120887', 'password50', 'Liyana Aqilah', 'PK-9903', '2025-07-25'),
('122931', 'password51', 'Hafizul Azim', 'PK-1237', '2025-06-21'),
('121210', 'password52', 'Nur Fatin Izzati', 'PK-3459', '2025-11-17'),
('120344', 'password53', 'Irfan Ashraf', 'PK-5671', '2025-09-20'),
('122406', 'password54', 'Shahrul Ikhwan', 'PK-8904', '2025-08-14'),
('123213', 'password55', 'Siti Aishah', 'PK-2348', '2025-07-01'),
('120500', 'password56', 'Ahmad Hakimi', 'PK-6782', '2025-06-18'),
('121678', 'password57', 'Hafizul Zainal', 'PK-9105', '2025-10-25'),
('122678', 'password58', 'Siti Hajar', 'PK-1127', '2025-08-30'),
('120134', 'password59', 'Ahmad Khairi', 'PK-3349', '2025-12-03'),
('121056', 'password60', 'Amirul Afiq', 'PK-5570', '2025-09-28'),
('122001', 'password61', 'Nur Shafiqah', 'PK-7792', '2025-08-08'),
('120654', 'password62', 'Arif Hakimi', 'PK-9904', '2025-07-11'),
('121899', 'password63', 'Khairul Hazim', 'PK-1238', '2025-11-07'),
('123042', 'password64', 'Sofia Nur Aina', 'PK-3460', '2025-09-03'),
('121678', 'password65', 'Nur Fatin Farhana', 'PK-5672', '2025-08-01'),
('120987', 'password66', 'Aina Izati', 'PK-8905', '2025-10-29'),
('122344', 'password67', 'Daniel Irfan', 'PK-2349', '2025-07-20'),
('121567', 'password68', 'Nurul Syafiqah', 'PK-6783', '2025-06-29'),
('120434', 'password69', 'Amirul Arif', 'PK-9106', '2025-11-11'),
('123012', 'password70', 'Haziq Syahmi', 'PK-1128', '2025-09-16'),
('121445', 'password71', 'Nurul Hidayati', 'PK-3350', '2025-07-19'),
('122789', 'password72', 'Syazwan Azim', 'PK-5571', '2025-06-14'),
('120098', 'password73', 'Ahmad Khairul', 'PK-7793', '2025-10-07'),
('123232', 'password74', 'Nur Afiqah', 'PK-9905', '2025-08-31'),
('120712', 'password75', 'Siti Adilah', 'PK-1239', '2025-06-27'),
('121799', 'password76', 'Ahmad Haziq', 'PK-3461', '2025-09-12'),
('122900', 'password77', 'Amirul Farhan', 'PK-5673', '2025-12-28'),
('121543', 'password78', 'Nurul Hafizah', 'PK-8906', '2025-10-28'),
('123012', 'password79', 'Hazim Hakim', 'PK-2350', '2025-08-15'),
('120577', 'password80', 'Farah Fatin', 'PK-6784', '2025-07-02'),
('122134', 'password81', 'Nurul Izati', 'PK-9107', '2025-11-12'),
('121409', 'password82', 'Hakimi Danial', 'PK-1129', '2025-09-21'),
('120324', 'password83', 'Khairul Azhar', 'PK-3351', '2025-12-20'),
('121788', 'password84', 'Aina Sofea', 'PK-5572', '2025-08-26'),
('122876', 'password85', 'Amirul Haziq', 'PK-7794', '2025-06-24'),
('120689', 'password86', 'Zulaikha Nurul', 'PK-9906', '2025-09-11'),
('121423', 'password87', 'Sofia Nur Adriana', 'PK-1240', '2025-11-09'),
('122567', 'password88', 'Siti Nur Ain', 'PK-3462', '2025-07-16'),
('121009', 'password89', 'Nur Syahirah', 'PK-5674', '2025-10-14'),
('120312', 'password90', 'Ahmad Hakim', 'PK-8907', '2025-09-30'),
('122344', 'password91', 'Muhammad Azhar', 'PK-2351', '2025-08-05'),
('123098', 'password92', 'Nurul Izati', 'PK-6785', '2025-06-16'),
('120223', 'password93', 'Amirul Ikmal', 'PK-9108', '2025-10-23'),
('121200', 'password94', 'Nur Syazwani', 'PK-1130', '2025-09-18'),
('123111', 'password95', 'Haziq Fakhrul', 'PK-3352', '2025-12-25'),
('120675', 'password96', 'Nur Fatin Izzati', 'PK-5573', '2025-08-22'),
('121323', 'password97', 'Irfan Hakim', 'PK-7795', '2025-06-10'),
('122908', 'password98', 'Liyana Afiqah', 'PK-9907', '2025-09-29'),
('120999', 'password99', 'Hidayah Amirah', 'PK-1241', '2025-07-24');

INSERT INTO vehicle (matric_id, vehicle_type, vehicle_colour, vehicle_brand, plate_no, insurance_expired)
VALUES

('120457','Car','Black','Proton','MKA 1234','2025-08-20'),
('122306','Car','White','Honda','KBC 3456','2025-10-18'),
('120789','Motorcycle','Red','Yamaha','ABC 5678','2025-12-05'),
('123002','Car','Blue','Toyota','WDD 8901','2025-11-25'),
('121453','Motorcycle','Green','Kawasaki','BDF 2345','2026-01-12'),
('120954','Car','Silver','Perodua','JKL 6789','2025-12-01'),
('121678','Motorcycle','Black','Suzuki','CBR 9101','2025-09-23'),
('122811','Car','Red','Nissan','WFA 1122','2025-12-27'),
('123145','Motorcycle','Blue','Honda','VBC 3344','2025-10-03'),
('121002','Car','Green','Proton','PQR 5566','2025-11-11'),
('120889','Car','Yellow','Toyota','TUV 7788','2025-08-19'),
('123331','Motorcycle','Black','Yamaha','MNO 9900','2025-07-08'),
('120233','Car','White','Suzuki','RST 1112','2025-12-24'),
('122009','Car','Blue','Nissan','KLM 2233','2025-09-02'),
('121545','Car','Black','Proton','PWS 4455','2025-07-23'),
('120678','Motorcycle','Green','Kawasaki','BRK 6677','2025-10-11'),
('122897','Car','Red','Honda','VBA 8899','2025-09-06'),
('121143','Motorcycle','Blue','Yamaha','FKL 1123','2025-12-31'),
('123876','Car','Yellow','Toyota','WDF 3344','2025-11-19'),
('120212','Car','Silver','Perodua','NRS 5567','2025-08-05'),
('121934','Motorcycle','Black','Suzuki','MKT 7789','2025-10-14'),
('122578','Car','White','Nissan','KRD 9901','2025-12-15'),
('120899','Car','Blue','Honda','WVS 1235','2026-01-22'),
('121077','Car','Red','Proton','BMA 3456','2025-11-09'),
('120354','Car','Green','Toyota','PLT 5679','2025-10-25'),
('123041','Motorcycle','Yellow','Kawasaki','VKR 8902','2025-07-30'),
('120432','Car','Black','Honda','JWR 2346','2025-09-18'),
('120902','Car','Silver','Suzuki','MRT 9103','2025-09-03'),
('122398','Car','Blue','Nissan','KDZ 1124','2025-08-08'),
('123155','Car','White','Proton','PVR 2234','2025-12-22'),
('120489','Car','Black','Toyota','BMT 4456','2025-09-29'),
('121245','Motorcycle','Green','Kawasaki','NCT 6678','2025-08-24'),
('123078','Car','Red','Honda','VKP 8890','2025-11-06'),
('121002','Motorcycle','Blue','Yamaha','JDN 1125','2025-08-31'),
('120543','Car','Yellow','Suzuki','WFL 3347','2025-07-06'),
('122611','Car','Silver','Proton','MBD 5568','2026-01-18'),
('120799','Car','Black','Nissan','KFW 7790','2025-09-13'),
('123456','Car','White','Honda','PWL 9902','2025-10-17'),
('120324','Car','Blue','Toyota','BGV 1236','2025-08-12'),
('121089','Motorcycle','Red','Kawasaki','MNT 3458','2026-01-24'),
('123211','Car','Green','Honda','VCS 5670','2025-10-30'),
('120987','Motorcycle','Yellow','Yamaha','JFT 8903','2025-08-21'),
('121451','Car','Black','Suzuki','WRM 2347','2025-11-27'),
('122785','Car','White','Nissan','NVB 6781','2025-07-23'),
('120111','Car','Blue','Proton','MCR 9104','2025-10-04'),
('123348','Car','Red','Toyota','KPL 1126','2025-07-29'),
('121023','Motorcycle','Green','Kawasaki','PWN 3348','2026-01-07'),
('120478','Car','Yellow','Honda','BRD 5569','2025-11-13'),
('121779','Motorcycle','Silver','Yamaha','VKL 7791','2025-09-24'),
('120887','Car','Black','Suzuki','JDS 9903','2025-08-19'),
('122931','Car','White','Nissan','WVM 1237','2025-07-16'),
('121210','Car','Blue','Proton','MNR 3459','2025-12-12'),
('120344','Car','Red','Toyota','KRL 5671','2025-10-15'),
('122406','Motorcycle','Green','Kawasaki','PWJ 8904','2025-09-08'),
('123213','Car','Yellow','Honda','BMT 2348','2025-07-26'),
('120500','Motorcycle','Silver','Yamaha','VBR 6782','2025-07-13'),
('121678','Car','Black','Suzuki','JWR 9105','2025-11-19'),
('122678','Car','White','Nissan','WST 1127','2025-09-24'),
('120134','Car','Blue','Proton','MDB 3349','2025-12-28'),
('121056','Car','Red','Toyota','KFT 5570','2025-10-23'),
('122001','Motorcycle','Green','Kawasaki','PWS 7792','2025-09-02'),
('120654','Car','Yellow','Honda','BKT 9904','2025-08-05'),
('121899','Motorcycle','Silver','Yamaha','VKR 1238','2025-12-02'),
('123042','Car','Black','Suzuki','JDF 3460','2025-09-28'),
('121678','Car','White','Nissan','WGS 5672','2025-08-26'),
('120987','Car','Blue','Proton','MDL 8905','2025-11-23'),
('122344','Car','Red','Toyota','KRN 2349','2025-08-14'),
('121567','Motorcycle','Green','Kawasaki','PWG 6783','2025-07-24'),
('120434','Car','Yellow','Honda','BPR 9106','2025-12-06'),
('123012','Motorcycle','Silver','Yamaha','VKT 1128','2025-10-11'),
('121445','Car','Black','Suzuki','JMC 3350','2025-08-13'),
('122789','Car','White','Nissan','WMT 5571','2025-07-09'),
('120098','Car','Blue','Proton','MCT 7793','2025-11-01'),
('123232','Car','Red','Toyota','KFN 9905','2025-09-25'),
('120712','Motorcycle','Green','Kawasaki','PWF 1239','2025-07-22'),
('121799','Car','Yellow','Honda','BRJ 3461','2025-10-07'),
('122900','Motorcycle','Silver','Yamaha','VCD 5673','2026-01-22'),
('121543','Car','Black','Suzuki','JFL 8906','2025-11-22'),
('123012','Car','White','Nissan','WDM 2350','2025-09-09'),
('120577','Car','Blue','Proton','MRD 6784','2025-07-27'),
('122134','Car','Red','Toyota','KFT 9107','2025-12-06'),
('121409','Motorcycle','Green','Kawasaki','PWS 1129','2025-10-16'),
('120324','Car','Yellow','Honda','BNT 3351','2026-01-14'),
('121788','Motorcycle','Silver','Yamaha','VKS 5572','2025-09-20'),
('122876','Car','Black','Suzuki','JDR 7794','2025-07-19'),
('120689','Car','White','Nissan','WMG 9906','2025-10-06'),
('121423','Car','Blue','Proton','MNR 1240','2025-12-04'),
('122567','Car','Red','Toyota','KFR 3462','2025-08-10'),
('121009','Motorcycle','Green','Kawasaki','PWS 5674','2025-11-08'),
('120312','Car','Yellow','Honda','BRT 8907','2025-10-25'),
('122344','Motorcycle','Silver','Yamaha','VKN 2351','2025-08-30'),
('123098','Car','Black','Suzuki','JMG 6785','2025-07-11'),
('120223','Car','White','Nissan','WST 9108','2025-11-17'),
('121200','Car','Blue','Proton','MDR 1130','2025-10-13'),
('123111','Car','Red','Toyota','KPR 3352','2026-01-19'),
('120675','Motorcycle','Green','Kawasaki','PWS 5573','2025-09-16'),
('121323','Car','Yellow','Honda','BRT 7795','2025-07-05'),
('122908','Motorcycle','Silver','Yamaha','VKR 9907','2025-10-24'),
('120999','Car','Black','Suzuki','JMC 1241','2025-08-18'),
('121678','Car','Black','Proton','MKA 1234','2025-08-09');