CREATE TABLE Intern (
    id SERIAL PRIMARY KEY,
    email VARCHAR(40) NOT NULL UNIQUE,
    first_name VARCHAR(50) NOT NULL, 
    last_name VARCHAR(100) NOT NULL     
);

CREATE TABLE Certificate (
    id SERIAL PRIMARY KEY,
    numbers VARCHAR(10) NOT NULL UNIQUE,
    start_date DATE, 
    end_date DATE,
	artifical_intelligence FLOAT CHECK(artifical_intelligence >0 AND artifical_intelligence <= 10),
	programming FLOAT CHECK(programming >0 AND programming <= 10),
	architecture FLOAT CHECK(architecture >0 AND architecture <= 10),
	project_management FLOAT CHECK(project_management >0 AND project_management <= 10),
	communications FLOAT CHECK(communications >0 AND communications <= 10),
	staff_management FLOAT CHECK(staff_management >0 AND staff_management <= 10),
	work_with_information FLOAT CHECK(work_with_information >0 AND work_with_information <= 10),
	infrastructure FLOAT CHECK(infrastructure >0 AND infrastructure <= 10),
	data_management FLOAT CHECK(data_management >0 AND data_management <= 10),
	intern INT,
	FOREIGN KEY (intern) REFERENCES Intern(id) ON DELETE CASCADE
);

CREATE TABLE Project_roles (
    id SERIAL PRIMARY KEY,
    project VARCHAR(100),
    roles VARCHAR(50),
	project_roles_intern INT,
	FOREIGN KEY (project_roles_intern) REFERENCES Intern(id) ON DELETE CASCADE     
);

CREATE TABLE Skills_tools (
    id SERIAL PRIMARY KEY,
    skill_tool VARCHAR(100)     
);

CREATE TABLE Intern_Skills_tools (
    id SERIAL PRIMARY KEY,
	intern INT,
	skill_tool INT,
	FOREIGN KEY (intern) REFERENCES Intern(id) ON DELETE CASCADE,
	FOREIGN KEY (skill_tool) REFERENCES Skills_tools(id) ON DELETE CASCADE
);

CREATE TABLE Certificate_Skills_tools (
    id SERIAL PRIMARY KEY,
	certificate INT,
	skill_tool INT,
	FOREIGN KEY (certificate) REFERENCES Certificate(id) ON DELETE CASCADE,
	FOREIGN KEY (skill_tool) REFERENCES Skills_tools(id) ON DELETE CASCADE
);
