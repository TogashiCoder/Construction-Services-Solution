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
                       resources TEXT,
                       FOREIGN KEY (project_id) REFERENCES projects(id)
);

CREATE TABLE resources (
                           id SERIAL PRIMARY KEY,
                           name VARCHAR(100),
                           type VARCHAR(50),
                           quantity INT,
                           supplier_info TEXT
);