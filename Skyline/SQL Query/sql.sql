CREATE TABLE projects (
                          id SERIAL PRIMARY KEY,
                          name VARCHAR(255) NOT NULL,
                          description TEXT,
                          start_date DATE,
                          end_date DATE,
                          budget NUMERIC
);

CREATE TABLE tasks (
                       id SERIAL PRIMARY KEY,
                       description TEXT NOT NULL,
                       start_date DATE,
                       end_date DATE,
                       status VARCHAR(30),
                       project_id INT,
                       FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE resources (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(255) NOT NULL,
                           type VARCHAR(255),
                           quantity INT,
                           supplier VARCHAR(255)
);

CREATE TABLE task_resources (
                                task_id INT,
                                resource_id INT,
                                PRIMARY KEY (task_id, resource_id),
                                FOREIGN KEY (task_id) REFERENCES tasks(id),
                                FOREIGN KEY (resource_id) REFERENCES resources(id)
);
