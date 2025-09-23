CREATE TABLE IF NOT EXISTS yoda.workers (
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  display_name VARCHAR(255),
  state INT NOT NULL DEFAULT 0,
  hostname VARCHAR(255) NOT NULL,
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  
  PRIMARY KEY (id),
  FOREIGN KEY (state) REFERENCES yoda.worker_states(id)
);