-- public.contact definition

-- Drop table

-- DROP TABLE contact;

CREATE TABLE contact_details (
	id bigserial NOT NULL,
	email1 varchar(127) NULL,
	email2 varchar(127) NULL,
	ph_no1 varchar(15) NULL,
	ph_no2 varchar(15) NULL,
	ph_no3 varchar(15) NULL,
	CONSTRAINT contact_pkey PRIMARY KEY (id)
);


-- public."location" definition

-- Drop table

-- DROP TABLE "location";

CREATE TABLE hs_location (
	id bigserial NOT NULL,
	building_no varchar(127) NULL,
	city varchar(127) NULL,
	pin_code int8 NULL,
	road_name varchar(127) NULL,
	additional varchar(255) NULL,
	CONSTRAINT hslocation_pkey PRIMARY KEY (id)
);


-- public."owner" definition

-- Drop table

-- DROP TABLE "owner";

CREATE TABLE hs_owner (
	id bigserial NOT NULL,
	full_name varchar(255) NULL,
	contact_id int8 NOT NULL,
	CONSTRAINT owner_pkey PRIMARY KEY (id),
	CONSTRAINT uk_hsowner_contact1 UNIQUE (contact_id),
	CONSTRAINT fk_hsowner_contact1 FOREIGN KEY (contact_id) REFERENCES contact_details(id)
);

CREATE TABLE rule_food (
	id bigserial NOT NULL,
	rule varchar NULL,
	food varchar NULL,
	amenity varchar NULL,
	CONSTRAINT rule_pkey PRIMARY KEY (id)
);

CREATE TABLE media (
	id bigserial NOT NULL,
	video varchar NULL,
	image varchar NULL,
	CONSTRAINT media_pkey PRIMARY KEY (id)
);


-- public.homestay definition

-- Drop table

-- DROP TABLE stay;

CREATE TABLE stay (
	id bigserial NOT NULL,
	title varchar(255) NULL,
	contact_id int8 NOT NULL,
	location_id int8 NOT NULL,
	owner_id int8 NOT NULL,
	rule_food_id int8 NULL,
	media_id int8 NULL,
	discount int4 NULL,
	discount_type varchar NULL,
	about varchar NOT NULL,
	max_discount int4 NULL,
	CONSTRAINT stay_pkey PRIMARY KEY (id),
	CONSTRAINT uk_stay_location1 UNIQUE (location_id),
	CONSTRAINT uk_stay_contact1 UNIQUE (contact_id),
	CONSTRAINT fk_stay_conact1 FOREIGN KEY (contact_id) REFERENCES contact_details(id),
	CONSTRAINT fk_stay_location1 FOREIGN KEY (location_id) REFERENCES hs_location(id),
	CONSTRAINT fk_stay_owner1 FOREIGN KEY (owner_id) REFERENCES hs_owner(id)
);

CREATE TABLE hs_room (
	id bigserial NOT NULL,
	title varchar(255) NULL,
	type varchar(255) NOT NULL,
	capacity int4 NOT NULL,
	stay_id int8 NOT NULL,
	media_id int8 NULL,
	person_cost int4 NOT NULL,
	discount int4 NULL,
    discount_type varchar NULL,
    other_info varchar NULL,
    bed_title varchar NOT NULL,
    amenity varchar NOT NULL,
	CONSTRAINT pk_hs_room_pkey PRIMARY KEY (id),
	CONSTRAINT fk_room_stay1 FOREIGN KEY (stay_id) REFERENCES stay(id)
);

