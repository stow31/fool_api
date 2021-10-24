CREATE DATABASE fool_app;

\c fool_app

CREATE TABLE locations(
    id SERIAL PRIMARY KEY,
    location_id TEXT,
    location_name TEXT,
    used BOOLEAN
)

CREATE TABLE scenarios(
    id SERIAL PRIMARY KEY,
    scenario_id TEXT,
    scenario_name TEXT,
    used BOOLEAN
)

UPDATE employees SET first_name=$1, last_name=$2, email_address=$3, job=$4 WHERE id = $5

ALTER TABLE traits
ADD trait_id TEXT;

ALTER TABLE locations
DROP COLUMN location_id;

ALTER TABLE scenarios
DROP COLUMN scenario_id;

-- Locations
INSERT INTO locations ( location_name, used) VALUES ('At the veterinary clinic', false);
INSERT INTO locations ( location_name, used) VALUES ('In a pottery class', false);
INSERT INTO locations ( location_name, used) VALUES ('At a trivia night', false);
INSERT INTO locations ( location_name, used) VALUES ('On the red carpet', false);
INSERT INTO locations ( location_name, used) VALUES ('On the peak of a mountain', false);


INSERT INTO locations ( location_name, used) VALUES ('On an airport runway', false);
INSERT INTO locations ( location_name, used) VALUES ('On a tennis court', false);
INSERT INTO locations ( location_name, used) VALUES ('In the DJ booth', false);
INSERT INTO locations ( location_name, used) VALUES ('At a barbeque', false);
INSERT INTO locations ( location_name, used) VALUES ('At the bottom of a waterfall', false);
INSERT INTO locations ( location_name, used) VALUES ('At a school dance', false);


-- Scenarios
INSERT INTO scenarios ( scenario_name, used) VALUES ('Walking the catwalk', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Youre pregnant and your water breaks', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Youre the only single person', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Your car breaks down', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Youre a photographer', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Telling someone they got the job', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Telling your parents you got a tattoo', false);
INSERT INTO scenarios ( scenario_name, used) VALUES ('Telling your sexual partner you have an STI', false);
