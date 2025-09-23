CREATE TABLE IF NOT EXISTS yoda.task_states (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO yoda.task_states (id, name) VALUES
  (0, 'unspecified'),
  (1, 'pending'),
  (2, 'assigned'),
  (3, 'running'),
  (4, 'cancelled'),
  (5, 'completed'),
  (6, 'timeout'),
  (7, 'failed'),
  (8, 'aborted');