-- Таблица механиков
CREATE TABLE IF NOT EXISTS t_p70271656_max_bot_diagnosis.mechanics (
  id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL UNIQUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Вставка начальных данных
INSERT INTO t_p70271656_max_bot_diagnosis.mechanics (name) 
VALUES 
  ('Иван'),
  ('Петр'),
  ('Сергей')
ON CONFLICT (name) DO NOTHING;