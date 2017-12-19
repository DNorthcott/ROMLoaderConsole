--
-- File generated with SQLiteStudio v3.1.1 on Tue Dec 19 10:45:28 2017
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Blend
CREATE TABLE Blend (
DateOfBlend TEXT,
Priority INT, 
Coal1 TEXT not null, 
Coal2 TEXT, 
Coal3 TEXT, 
Coal4 TEXT, 
Coal5 TEXT, 
Coal6 TEXT, 
Coal7 TEXT, 
Coal8 TEXT, 
Coal9 TEXT, 
Coal10 TEXT,
PRIMARY KEY ( DateOfBlend, Priority)
FOREIGN KEY (Coal1) REFERENCES Coal(name)
FOREIGN KEY (Coal2) REFERENCES Coal(name)
FOREIGN KEY (Coal3) REFERENCES Coal(name)
FOREIGN KEY (Coal4) REFERENCES Coal(name)
FOREIGN KEY (Coal5) REFERENCES Coal(name)
FOREIGN KEY (Coal6) REFERENCES Coal(name)
FOREIGN KEY (Coal7) REFERENCES Coal(name)
FOREIGN KEY (Coal8) REFERENCES Coal(name)
FOREIGN KEY (Coal9) REFERENCES Coal(name)
FOREIGN KEY (Coal10) REFERENCES Coal(name)
);
INSERT INTO Blend (DateOfBlend, Priority, Coal1, Coal2, Coal3, Coal4, Coal5, Coal6, Coal7, Coal8, Coal9, Coal10) VALUES ('2017-12-12', 1, '03N_46_J16', '03S_46_F25', '05N_46_F25', '03S_46_J19', '13_36_J17', '13_34_F23', '13_38_J16', NULL, NULL, NULL);
INSERT INTO Blend (DateOfBlend, Priority, Coal1, Coal2, Coal3, Coal4, Coal5, Coal6, Coal7, Coal8, Coal9, Coal10) VALUES ('2017-12-13', 1, '03N_46_J16', '03S_46_F25', '05N_46_F25', '03S_46_J19', '13_36_J17', '13_34_F23', '13_38_J16', NULL, NULL, NULL);
INSERT INTO Blend (DateOfBlend, Priority, Coal1, Coal2, Coal3, Coal4, Coal5, Coal6, Coal7, Coal8, Coal9, Coal10) VALUES ('2017-12-13', 2, '12_34_F54', '12_34_F54', '05N_46_F25', '03S_46_F25', '13_36_J17', '03S_46_F25', '13_38_J16', NULL, NULL, NULL);
INSERT INTO Blend (DateOfBlend, Priority, Coal1, Coal2, Coal3, Coal4, Coal5, Coal6, Coal7, Coal8, Coal9, Coal10) VALUES ('2017-12-13', 3, '05N_46_F25', '13_36_J17', '05N_46_F25', '03S_46_F25', '13_36_J17', '03S_46_F25', '13_36_J17', '03S_46_J19', '03S_46_J19', NULL);

-- Table: Coal
CREATE TABLE Coal (
Name TEXT PRIMARY KEY,
Vols REAL NOT NULL,
Phos REAL NOT NULL,
Suphur REAL NOT NULL, 
Csr REAL NOT NULL,
FeedAsh REAL NOT NULL,
Yield REAL NOT NULL
);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('03N_46_J16', 16.88, 0.044, 0.56, 73.22979862, 41.190194195548, 27.1407961158311);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('03S_46_F25', 16.05, 0.095, 0.57, 69.6175748, 20.1327015148744, 83.665791521935);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('05N_46_F25', 16.05, 0.077, 0.56, 68.88722832, 20.7296894881353, 81.8602148971617);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('03S_46_J19', 16.42, 0.006, 0.55, 73.81563068, 45.2348164636233, 34.6863492889159);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('09S_28_F25', 17.8, 0.017, 0.56, 71.83023082, 21.8327181197309, 76.3673418080408);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('10S_34_J16', 18.73, 0.003, 0.56, 71.01500052, 43.9064110285285, 25.1229519785254);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('10S_33_F25', 17.79, 0.023, 0.58, 71.0069547, 21.8186073425707, 78.8944089705392);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('12_34_F54', 18.85, 0.004, 0.62, 73.20385192, 52.6527334763075, 37.2467495223634);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('12_34_F18', 17.25, 0.006, 0.58, 68.20561952, 32.4497678563852, 63.9249308316604);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_36_F53', 18.2843764162638, 0.00669472558202254, 0.615289451164045, 71.5770635799889, 44.7472195131895, 52.0425009172606);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_34_F15', 18.38, 0.011, 0.6, 70.11699182, 22.3310079438203, 80.1318847709004);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_36_J17', 18.9966, 0.0574, 0.6243, 69.716768620458, 26.18408100523, 67.891417356577);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_34_F23', 19.85, 0.007, 0.75, 64.28233668, 25.0734830073009, 69.1058544361756);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_38_J16', 18.8502, 0.0035, 0.5685, 74.257504865992, 35.2465084401634, 43.5104526566685);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('03N_46_F25', 16.29, 0.103, 0.56, 70.16188348, 17.0308645543743, 89.1764147256839);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15N_25_G253', 18.33, 0.006, 0.55, 75.53894292, 23.8396138365239, 77.2373136869642);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15S_25_G252', 19.06, 0.003, 0.58, 51.12113322, 11.2656359344875, 103.469713199201);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15S_23_J16', 18.09, 0.004, 0.56, 70.78890428, 26.6602513575221, 68.6690094972363);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('09S_28_K16', 19.04, 0.004, 0.53, 71.78807538, 36.1399614169866, 45.9865069786545);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16N_23_G53', 18.7, 0.006, 0.63, 69.7515368, 24.8616204867326, 77.7834006106225);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16S_23_G53', 19.27, 0.024, 0.7, 57.74814932, 44.4209684780633, 49.2120807719463);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16S_25_K17', 18.31, 0.056, 0.58, 69.709503, 21.8080215628881, 80.9334943951257);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16S_24_K22', 17.6245, 0.0023, 0.5419, 71.909271342218, 42.179741443786, 19.114750833746);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('13_38_Q15', 20.5192, 0.0393, 0.6162, 62.971239875978, 29.2674449917536, 81.0314501104514);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('14S_25_J17', 18.6, 0.048, 0.6, 72.45319502, 26.954466507447, 67.1510733289415);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('14S_27_J16', 18.65, 0.004, 0.59, 72.04056742, 36.2990190882166, 41.7356195272957);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16N_22_F253', 18.54, 0.015, 0.54, 70.6626695, 28.0972965181447, 73.7969536495319);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('16S_22_F253', 18.41, 0.006, 0.57, 71.83404108, 30.3184621955997, 62.8355149851001);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('12_34_F25', 18.01, 0.032, 0.61, 69.02638352, 22.952253276938, 79.3654197933277);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15N_28_Q15', 19.63, 0.074, 0.64, 63.79799648, 28.5575269577465, 72.9909752524764);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15N_25_F252', 18.21, 0.006, 0.55, 75.38956738, 22.76682262555, 78.5528476799182);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('15N_24_F53', 18.35, 0.003, 0.57, 72.24448598, 34.2246730661379, 65.5227883518256);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('17N_24_C251', 19.73, 0.003, 0.55, 50.0000333, 21.3182700888276, 85.6926488719916);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('17S_24_C250', 18.64, 0.003, 0.57, 64.2909905, 22.5720195550838, 84.0749707401862);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('14S_24_B53', 19.29, 0.007, 0.57, 68.52573842, 31.7588972896917, 70.6905800715241);
INSERT INTO Coal (Name, Vols, Phos, Suphur, Csr, FeedAsh, Yield) VALUES ('12_35_C16', 18.84, 0.005, 0.57, 72.43183742, 39.152938181443, 36.1195269405856);

-- Table: CoalMovement
CREATE TABLE CoalMovement (
Coal TEXT,
Truck TEXT,
DateTimeArrival TEXT,
PRIMARY KEY (Coal, Truck, DateTimeArrival),
FOREIGN KEY (Coal) REFERENCES Coal(name)
FOREIGN KEY (Truck) REFERENCES Truck(name)
);
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 00:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 00:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 00:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 00:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 00:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 01:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 01:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 01:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 01:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 01:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 01:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 02:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 02:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 02:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 02:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 02:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 02:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 03:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 03:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 03:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 03:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 03:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 04:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 04:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 04:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 04:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 04:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 04:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 05:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 05:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 05:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 05:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 05:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 05:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 06:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 06:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 06:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 06:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 06:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 07:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 07:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 07:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 07:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 07:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 07:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 08:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 08:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 08:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 08:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 08:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 08:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 09:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 09:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 09:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 09:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 09:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 10:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 10:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 10:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 10:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 10:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 10:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 11:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 11:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 11:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 11:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 11:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 11:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 12:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 12:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 12:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 12:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 12:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 13:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 13:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 13:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 13:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 13:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 13:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 14:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 14:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 14:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 14:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 14:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 14:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 15:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 15:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 15:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 15:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 15:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 16:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 16:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 16:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 16:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 16:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 16:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 17:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 17:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 17:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 17:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 17:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 17:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 18:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 18:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 18:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 18:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 18:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-12 19:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 19:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 19:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 19:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 19:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 19:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 20:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 20:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 20:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 20:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 20:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 20:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 21:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-12 21:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 21:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 21:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 21:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 22:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-12 22:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 22:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 22:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-12 22:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-12 22:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-12 23:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 23:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-12 23:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-12 23:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-12 23:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-12 23:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 00:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 00:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 00:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 01:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 01:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 01:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 01:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-12 02:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 02:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 02:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 02:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 03:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 03:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-12 03:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 04:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 04:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 04:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 04:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 05:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 05:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 05:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 05:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 06:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 06:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-12 06:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 06:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-12 07:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 07:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 07:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 08:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 08:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 08:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 08:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-12 09:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 09:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 09:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 09:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 10:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 10:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 10:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 10:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 11:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 11:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 11:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 12:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 12:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 12:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 12:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 13:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 13:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 13:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 13:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 14:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 14:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 14:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 14:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 15:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 15:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 15:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 16:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 16:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 16:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 16:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 17:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 17:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 17:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 17:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 18:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-12 18:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 18:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 18:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 19:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 19:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 19:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-12 20:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 20:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 20:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 20:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 21:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-12 21:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 21:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-12 21:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 22:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 22:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-12 22:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-12 22:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-12 23:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-12 23:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-12 23:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 00:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 00:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 00:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 00:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 00:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 00:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 01:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 01:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 01:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 01:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 01:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 01:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 02:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 02:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 02:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 02:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 02:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 02:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 03:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 03:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 03:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 03:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 03:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 04:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 04:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 04:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 04:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 04:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 04:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 05:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 05:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 05:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 05:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 05:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 05:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 06:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 06:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 06:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 06:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 06:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 07:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 07:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 07:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 07:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 07:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 07:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 08:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 08:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 08:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 08:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 08:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 08:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 09:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 09:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 09:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 09:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 09:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 10:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 10:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 10:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 10:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 10:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 10:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 11:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 11:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 11:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 11:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 11:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 11:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 12:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 12:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 12:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 12:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 12:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 13:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 13:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 13:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 13:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 13:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 13:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 14:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 14:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 14:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 14:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 14:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 14:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 15:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 15:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 15:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 15:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 15:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 16:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 16:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 16:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 16:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 16:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 16:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 17:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 17:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 17:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 17:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 17:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 17:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 18:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 18:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 18:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 18:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 18:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 19:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 19:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 19:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 19:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 19:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 19:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck8', '2017-12-13 20:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 20:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 20:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 20:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck2', '2017-12-13 20:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 20:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 21:10:35');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck6', '2017-12-13 21:21:10');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 21:31:45');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 21:42:21');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 21:52:56');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 22:03:31');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 22:14:07');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck9', '2017-12-13 22:24:42');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 22:35:17');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 22:45:52');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck3', '2017-12-13 22:56:28');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck4', '2017-12-13 23:07:03');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 23:17:38');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck7', '2017-12-13 23:28:14');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck5', '2017-12-13 23:38:49');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck10', '2017-12-13 23:49:24');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('05N_46_F25', 'Truck1', '2017-12-13 23:59:59');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 00:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 00:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 00:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 01:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 01:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-13 01:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 01:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 02:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 02:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 02:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-13 02:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 03:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 03:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 03:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 04:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 04:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 04:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 04:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 05:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 05:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 05:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 05:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 06:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 06:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 06:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 06:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 07:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 07:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 07:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 08:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 08:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 08:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-13 08:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 09:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 09:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 09:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 09:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 10:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-13 10:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 10:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 10:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 11:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 11:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 11:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 12:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 12:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 12:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 12:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 13:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 13:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 13:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck4', '2017-12-13 13:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 14:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 14:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 14:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 14:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 15:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 15:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 15:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 16:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 16:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 16:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 16:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 17:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 17:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 17:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 17:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 18:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 18:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 18:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 18:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 19:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 19:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck3', '2017-12-13 19:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 20:00:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 20:16:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 20:32:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 20:48:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck7', '2017-12-13 21:04:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 21:20:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 21:36:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 21:52:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck1', '2017-12-13 22:08:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck8', '2017-12-13 22:24:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck2', '2017-12-13 22:40:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-13 22:56:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck5', '2017-12-13 23:12:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck9', '2017-12-13 23:28:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck10', '2017-12-13 23:44:00');
INSERT INTO CoalMovement (Coal, Truck, DateTimeArrival) VALUES ('13_36_J17', 'Truck6', '2017-12-14 00:00:00');

-- Table: RunOfMine
CREATE TABLE RunOfMine (
date TEXT,
Priority INT, 
Stockpile1 TEXT,
Stockpile2 TEXT,
Stockpile3 TEXT,
Stockpile4 TEXT,
Stockpile5 TEXT,
Stockpile6 TEXT,
Stockpile7 TEXT,
Stockpile8 TEXT,
Stockpile9 TEXT,
Stockpile10 TEXT,
PRIMARY KEY (date, priority)
FOREIGN KEY (stockpile1) REFERENCES Coal(name)
FOREIGN KEY (stockpile2) REFERENCES Coal(name)
FOREIGN KEY (stockpile3) REFERENCES Coal(name)
FOREIGN KEY (stockpile4) REFERENCES Coal(name)
FOREIGN KEY (stockpile5) REFERENCES Coal(name)
FOREIGN KEY (stockpile6) REFERENCES Coal(name)
FOREIGN KEY (stockpile7) REFERENCES Coal(name)
FOREIGN KEY (stockpile8) REFERENCES Coal(name)
FOREIGN KEY (stockpile9) REFERENCES Coal(name)
FOREIGN KEY (stockpile10) REFERENCES Coal(name)
);
INSERT INTO RunOfMine (date, Priority, Stockpile1, Stockpile2, Stockpile3, Stockpile4, Stockpile5, Stockpile6, Stockpile7, Stockpile8, Stockpile9, Stockpile10) VALUES ('2017-12-12', 1, '03N_46_J16', NULL, NULL, '03S_46_F25', NULL, NULL, '03S_46_J19', '13_36_J17', NULL, NULL);
INSERT INTO RunOfMine (date, Priority, Stockpile1, Stockpile2, Stockpile3, Stockpile4, Stockpile5, Stockpile6, Stockpile7, Stockpile8, Stockpile9, Stockpile10) VALUES ('2017-12-13', 1, '03N_46_J16', NULL, NULL, '03S_46_F25', NULL, NULL, '03S_46_J19', '13_36_J17', NULL, NULL);
INSERT INTO RunOfMine (date, Priority, Stockpile1, Stockpile2, Stockpile3, Stockpile4, Stockpile5, Stockpile6, Stockpile7, Stockpile8, Stockpile9, Stockpile10) VALUES ('2017-12-13', 2, '12_34_F54', '13_36_J17', '15N_25_G253', '03S_46_F25', NULL, NULL, '16S_23_G53', '16N_22_F253', '16N_22_F253', NULL);
INSERT INTO RunOfMine (date, Priority, Stockpile1, Stockpile2, Stockpile3, Stockpile4, Stockpile5, Stockpile6, Stockpile7, Stockpile8, Stockpile9, Stockpile10) VALUES ('2017-12-13', 3, '03S_46_J19', '13_34_F23', NULL, '03S_46_F25', '05N_46_F25', '13_36_J17', '16S_23_G53', '16N_22_F253', '12_34_F25', '13_36_J17');

-- Table: Stocks
CREATE TABLE "Stocks" (
"Id" integer primary key autoincrement not null ,
"Symbol" varchar(8) );
INSERT INTO Stocks (Id, Symbol) VALUES (1, 'test');

-- Table: Truck
CREATE TABLE Truck (
name TEXT,
PRIMARY KEY (name)
);
INSERT INTO Truck (name) VALUES ('Truck1');
INSERT INTO Truck (name) VALUES ('Truck2');
INSERT INTO Truck (name) VALUES ('Truck3');
INSERT INTO Truck (name) VALUES ('Truck4');
INSERT INTO Truck (name) VALUES ('Truck5');
INSERT INTO Truck (name) VALUES ('Truck6');
INSERT INTO Truck (name) VALUES ('Truck7');
INSERT INTO Truck (name) VALUES ('Truck8');
INSERT INTO Truck (name) VALUES ('Truck9');
INSERT INTO Truck (name) VALUES ('Truck10');

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
