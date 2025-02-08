CREATE DATABASE "Project managment system";


CREATE TABLE clients (
    id SERIAL PRIMARY KEY, -- Auto-incrementing ID
    name VARCHAR(10) NOT NULL
);


CREATE TABLE employees (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    project_id INT, 
    CONSTRAINT fk_project
	FOREIGN KEY (project_id)
	REFERENCES projects (id)
	ON DELETE SET NULL
);

CREATE TABLE projects (
    id SERIAL PRIMARY KEY, 
    client_id INT NOT NULL, 
    project_lead_id INT, 
    CONSTRAINT fk_client
	FOREIGN KEY (client_id)
	REFERENCES clients (id)
	ON DELETE CASCADE,
    CONSTRAINT fk_project_lead
	FOREIGN KEY (project_lead_id)
	REFERENCES employees (id)
	ON DELETE SET NULL
);
