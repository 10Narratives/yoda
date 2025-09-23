CREATE TABLE IF NOT EXISTS yoda.workers_task_types (
  worker_id UUID NOT NULL,
  task_type_id UUID NOT NULL,

  FOREIGN KEY (worker_id) REFERENCES yoda.workers(id),
  FOREIGN KEY (task_type_id) REFERENCES yoda.task_types(id)
);