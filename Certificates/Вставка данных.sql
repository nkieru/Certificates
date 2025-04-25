INSERT INTO Intern(email, first_name, last_name)
VALUES
        ('example_1@example.com', 'Name_1', 'Lastname_1'),
        ('example_2@example.com', 'Name_2', 'Lastname_2'),
        ('example_3@example.com', 'Name_3', 'Lastname_3');

INSERT INTO Certificate(start_date, end_date, numbers, artifical_intelligence, programming, architecture, project_management, communications, staff_management, work_with_information, infrastructure, data_management, intern)
VALUES
        ('2024-01-01', '2024-07-01', '1234567890', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '9.5', '1'),
        ('2024-02-02', '2024-08-02', '2345678901', '5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '9', '2'),
        ('2024-03-03', '2024-09-03', '3456789012', '4.5', '5', '5.5', '6', '6.5', '7', '7.5', '8', '8.5', '3');

INSERT INTO Project_roles(project, roles, project_roles_intern)
VALUES
        ('Project_1', 'Role_1', '1'),
        ('Project_1', 'Role_2', '2'),
        ('Project_2', 'Role_1', '3'),
        ('Project_2', 'Role_2', '2');

INSERT INTO Skills_tools(skill_tool)
VALUES
        ('Skill_tool_1'),
        ('Skill_tool_2'),
        ('Skill_tool_3'),
        ('Skill_tool_4'),
        ('Skill_tool_5'),
        ('Skill_tool_6');

INSERT INTO Certificate_Skills_tools(certificate, skill_tool)
VALUES
        ('1', '1'),
        ('1', '2'),
        ('1', '3'),
        ('2', '2'),
        ('2', '3'),
        ('3', '3');
        
INSERT INTO Intern_Skills_tools(intern, skill_tool)
VALUES
        ('1', '1'),
        ('1', '2'),
        ('1', '3'),
        ('1', '4'),
        ('1', '5'),
        ('1', '6'),
        ('2', '2'),
        ('2', '3'),
        ('2', '4'),
        ('3', '3');