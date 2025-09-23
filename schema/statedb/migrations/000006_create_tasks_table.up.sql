CREATE TABLE IF NOT EXISTS yoda.tasks (
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  worker_id UUID NOT NULL,
  state INT NOT NULL,
  type UUID NOT NULL,
  metadata JSONB,
  parameters JSONB,
  create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  start_time TIMESTAMP,
  end_time TIMESTAMP,

  PRIMARY KEY (id),
  FOREIGN KEY (worker_id) REFERENCES yoda.workers(id),
  FOREIGN KEY (state) REFERENCES yoda.task_states(id),
  FOREIGN KEY (type) REFERENCES yoda.task_types(id)
);