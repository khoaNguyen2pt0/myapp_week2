-- must be in the same directory with schema and queries.
-- this file should contain at least three INSERT statements (at least one for each table in your database).
-- each of those INSERT(s) should add at least 2 sample records to their table.
INSERT INTO members (id, username, first_name,   last_name, gender, starting_weight, sign_on) 
  VALUES 
  (1, 'knguyen1987', 'Khoa', 'Nguyen', 'Male', 207, NOW()::DATE) , 
  (2, 'suenguyen1992', 'Sue', 'Nguyen', 'Female', 135, NOW()::DATE); 

INSERT INTO goals (id, goal_category, title,
  ideal_weight, deadline) 
  VALUES 
  (1, 3, 'lose 50 lbs fat and gain 10 pounds of muscle in 6 months',167, (NOW() + INTERVAL '6 MONTHS')::DATE),
  (2, 1, 'go back to pre-baby weight', 110, (NOW() + INTERVAL '6 MONTHS')::DATE);

INSERT INTO categories (id, work) 
  VALUES
  (1, 'lose fat'),
  (2, 'build muscle'),
  (3, 'body recomposition');



