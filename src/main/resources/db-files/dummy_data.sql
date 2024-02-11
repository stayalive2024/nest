INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3)
VALUES(101, 'test1@gmail.com', '', '9876543210', '9187654329', '');

INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3)
VALUES(102, 'test2@gmail.com', '', '6676543210', '2487654329', '');

--------------------------------------------------------------------------------------

INSERT INTO hs_owner (id, full_name, contact_id) VALUES(101, 'owner1 lastname', 101);
INSERT INTO hs_owner (id, full_name, contact_id) VALUES(102, 'owner2 lastname', 102);

--------------------------------------------------------------------------------------

INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3)
VALUES(103, 'deluxe@gmail.com', '', '9876543210', '9187654329', '');

INSERT INTO contact_details (id, email1, email2, ph_no1, ph_no2, ph_no3)
VALUES(104, 'mountain@gmail.com', '', '6676543210', '2487654329', '');

--------------------------------------------------------------------------------------

INSERT INTO hs_location (id, building_no, city, pin_code, road_name, additional)
VALUES(101, '45', 'Darjeeling', 876544, 'West point', 'Opposite of xyz bank');

INSERT INTO hs_location (id, building_no, city, pin_code, road_name, additional)
VALUES(102, '100', 'Darjeeling', 6152637, 'M.G road', 'Near smart bazar');

--------------------------------------------------------------------------------------
INSERT INTO rule_food (id,rule,food,amenity)
values (101,'{"rules":[{"title":"Restrictions","items":["Unmarried couples are not allowed","Guests below 18 years of age are not allowed at the property.","Passport, Aadhar, Driving License and Govt. ID are accepted as ID proof(s)","Pets are not allowed.","Outside food is not allowed"]},{"title":"Guest Profile","items":["Unmarried couples are not allowed","Guests below 18 years of age are not allowed at the property."]},{"title":"ID Proof Related","items":["Local ids not allowed","Passport, Aadhar, Driving License and Govt. ID are accepted as ID proof(s)"]},{"title":"Smoking/Alcohol consumption Rules","items":["Smoking within the premises is allowed","Alcohol consumption is not allowed within the property premises."]},{"title":"Pet(s) Related","items":["Pets are not allowed.","There are no pets living on the property"]},{"title":"Property Accessibility","items":["This property is accessible to guests who use a wheelchair. Guests are requested to carry their own wheelchair."]},{"title":"Finding keys to the property","items":["Caretaker Greets You & Helps You Check-in","Host Greets You & Helps You Check-in","Guest can self check-in via Smart Door","Guests can collect or deposit keys through the building staff"]},{"title":"Other Rules","items":["Guests are requested not to invite outside visitors in the room during their stay. They can use common areas to meet their visitors.","Does not allow private parties or events"]}]}',
'{"foods":[{"title":"Foods","items":["Outside food not allowed","Breakfast, lunch and dinner will be provided by us."]}]}',
'{"amenities":[{"title":"Popular Amenities","items":["Caretaker","Luggage Storage","Housekeeping","Free Wi-Fi"]},{"title":"Basic Facilities","items":["Housekeeping","Free Wi-Fi","Umbrellas","Torch","Attached Bathroom","Room Service","Multilingual Staff"]}]}')


--------------------------------------------------------------------------------------

INSERT INTO media (id, video, image)
values (101, null, '{"image":[{"title":"Balcony view","tag":"balcony","desc":"Awesome balcony view","url":"https://www.darjeeling-tourism.com/darj_i000166.jpg"},{"title":"Balcony view","tag":"balcony","desc":"Awesome balcony view","url":"https://www.darjeeling-tourism.com/darj_i000137.jpg"},{"title":"Outside of homestay","tag":"outside","desc":"tea garden","url":"https://www.darjeeling-tourism.com/darj_i0003f5.jpg"}]}');

--------------------------------------------------------------------------------------

INSERT INTO stay (id, title, contact_id, location_id, owner_id,rule_food_id,media_id,discount,discount_type,max_discount,about)
VALUES(101, 'Deluxe home', 103, 101, 101,101,101,0, 'percentage', 0,'Located 8.4 km from Tiger Hill and 2.7 km from Ghoom Monastery, Wonder Hill Parivaar homestay provides accommodation in Darjeeling. Complimentary WiFi is providedthroughout the property. Some units include a terrace and/or a balcony.');

INSERT INTO stay (id, title, contact_id, location_id, owner_id,rule_food_id,media_id,discount,discount_type,max_discount,about)
VALUES(102, 'Mountain view', 104, 102, 101,101,101,0, 'percentage', 0,'Located 8.4 km from Tiger Hill and 2.7 km from Ghoom Monastery, Wonder Hill Parivaar homestay provides accommodation in Darjeeling. Complimentary WiFi is providedthroughout the property. Some units include a terrace and/or a balcony.');

--------------------------------------------------------------------------------------

INSERT INTO hs_room (id, title, type, capacity, stay_id,media_id,person_cost,discount,discount_type,other_info,bed_title,amenity)
VALUES(101, 'Standard double bed room', 'Standard',4,102, 101,1000,0,null,null,'2 x Double Bed','amenity');

INSERT INTO hs_room (id, title, type, capacity, stay_id,media_id,person_cost,discount,discount_type,other_info,bed_title,amenity)
VALUES(102, 'Deluxe double bed room', 'Deluxe',2,101, 101,1200,0,null,null,'1 x Double Bed','amenity');

INSERT INTO hs_room (id, title, type, capacity, stay_id,media_id,person_cost,discount,discount_type,other_info,bed_title,amenity)
VALUES(103, 'Suite double bed room', 'Suite',2,101, 101,2000,0,null,null,'1 x Double Bed','amenity');

--------------------------------------------------------------------------------------