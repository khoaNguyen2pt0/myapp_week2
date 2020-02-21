-- same directory with seed and schema.
-- should include at least 2 SELECT queries, each of which should return at least 1 result. (after your seed data had been applied).
-- all shoudl select specific columns (not *), and that selection should make a meaningful query.
-- at least 1 of them should be a JOIN query between 2 or more tables.
-- Query is a request for more information from a database.

SELECT members.username, members.starting_weight, goals.ideal_weight, goals.title, goals.deadline, goals.goal_category
  FROM members, goals
  WHERE members.id = goals.id;

SELECT goals.goal_category, categories.work 
  FROM goals JOIN categories 
  ON goals.goal_category = categories.id ;