CREATE TABLE projects (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(100),
                          description TEXT,
                          start_date DATE,
                          end_date DATE,
                          budget NUMERIC(10, 2)
);

CREATE TABLE tasks (
                       id SERIAL PRIMARY KEY,
                       project_id INT,
                       description TEXT,
                       start_date DATE,
                       end_date DATE,
                       status VARCHAR(20),
                       FOREIGN KEY (project_id) REFERENCES projects(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE resources (
                           id SERIAL PRIMARY KEY,
                           task_id INT,
                           name VARCHAR(100),
                           type VARCHAR(50),
                           quantity INT,
                           supplier_info TEXT,
                           FOREIGN KEY (task_id) REFERENCES tasks(id) ON DELETE CASCADE ON UPDATE CASCADE
);