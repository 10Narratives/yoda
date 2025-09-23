CREATE TABLE IF NOT EXISTS yoda.task_types (
  id UUID NOT NULL DEFAULT gen_random_uuid(),
  metadata_schema JSONB,
  parameters_schema JSONB,

  PRIMARY KEY (id)
);