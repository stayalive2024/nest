INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3) VALUES(10001, 'test1@gmail.com', '', '9876543210', '9187654329', '');
INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3) VALUES(10002, 'test2@gmail.com', '', '6676543210', '2487654329', '');

INSERT INTO hs_owner (id, full_name, contact_id) VALUES(10001, 'owner1 lastname', 10001);
INSERT INTO hs_owner (id, full_name, contact_id) VALUES(10002, 'owner2 lastname', 10002);

INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3) VALUES(10003, 'deluxe@gmail.com', '', '9876543210', '9187654329', '');
INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3) VALUES(10004, 'mountain@gmail.com', '', '6676543210', '2487654329', '');


INSERT INTO hs_location (id, building_no, city, pin_code, road_name, additional) VALUES(10001, '45', 'kolkata', 876544, 'Subhash road', 'Opposite of xyz bank');
INSERT INTO hs_location (id, building_no, city, pin_code, road_name, additional) VALUES(10002, '100', 'Darjeeling', 6152637, 'M.G road', 'Near smart bazar');

INSERT INTO stay (id, title, contact_id, location_id, owner_id,rule_food_id,media_id) VALUES(10001, 'Deluxe home', 10003, 10001, 10001,null,null);
INSERT INTO stay (id, title, contact_id, location_id, owner_id,rule_food_id,media_id) VALUES(10002, 'Mountain view', 10004, 10002, 10001,null,null);
