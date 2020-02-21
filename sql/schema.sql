-- MUST : CREATE TABLE statements to generate at least 3 tables for your site.
-- all tables must relate to at least one other table in you schema. you should be able to create JOIN queries between all of them.
-- every table should have a single "id" column, plus at least 3 other meaningful columns.
-- good to have tables reusable for your final project.
CREATE TABLE members (
  id BIGSERIAL,
  username VARCHAR(50) UNIQUE NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  gender VARCHAR(7) NOT NULL,
  starting_weight NUMERIC NOT NULL,
  sign_on DATE NOT NULL
);

CREATE TABLE goals (
  id BIGSERIAL,
  goal_category SERIAL,
  title VARCHAR(100) NOT NULL,
  ideal_weight NUMERIC NOT NULL,
  deadline DATE NOT NULL
);

CREATE TABLE categories (
  id BIGSERIAL, 
  work VARCHAR(50) NOT NULL
);
