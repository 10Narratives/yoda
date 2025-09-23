CREATE TABLE IF NOT EXISTS yoda.worker_states (
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO yoda.worker_states (id, name) VALUES 
  (0, 'unspecified'),
  (1, 'busy'),
  (2, 'idle'),
  (3, 'unavailable');