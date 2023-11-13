# hw7-ddl.sql
## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"
# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.
# Section 1
# Drops all tables.  This section should be amended as new tables are added.
SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS people;
drop table if EXISTS skills;
drop table if EXISTS peopleskills;
drop table if EXISTS roles;
drop table if EXISTS peopleroles;
SET FOREIGN_KEY_CHECKS = 1;
# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!
drop table if EXISTS skills;
create table skills(
    skills_id int not null primary key,
    skills_name varchar(255) not null,
    skills_description varchar(255) not null default 'Default value.',
    skills_tag varchar(255),
    skills_url varchar(255),
    skills_time_commitment int
);
# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!
insert into skills(
        skills_id,
        skills_name,
        skills_description,
        skills_tag
    )
values (
        1,
        'Quantum Juggling',
        'The art of juggling in multiple parallel universes.',
        'Skill 1'
    ),
    (
        2,
        'Balloon twisting',
        'The art of creating different shapes and objects out of balloons.',
        'Skill 2'
    ),
    (
        3,
        'Candle making',
        'The art of creating candles from scratch.',
        'Skill 3'
    ),
    (
        4,
        'Glass blowing',
        'The art of creating glass objects by melting glass and shaping it with hand-held tools.',
        'Skill 4'
    ),
    (
        5,
        'Origami',
        ' The art of creating paper objects by folding paper.',
        'Skill 5'
    ),
    (
        6,
        'Paper marbling',
        'The art of creating patterns on paper by floating paint on water and then transferring the paint to paper.',
        'Skill 6'
    ),
    (
        7,
        'Pottery',
        'The art of creating objects out of clay.',
        'Skill 7'
    ),
    (
        8,
        'Soap making',
        'The art of creating soap from scratch.',
        'Skill 8'
    );
# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.
drop table if EXISTS people;
CREATE TABLE people(
    people_id int primary key not null,
    people_first_name varchar(255),
    people_last_name varchar(256) NOT NULL,
    people_email varchar(255),
    people_linkedin_url varchar(255),
    people_headshot_url varchar(255),
    people_discord_handle varchar(255),
    people_brief_bio varchar(255),
    people_date_joined date not null
);
# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.
insert into people (
        people_id,
        people_first_name,
        people_last_name,
        people_email,
        people_linkedin_url,
        people_headshot_url,
        people_discord_handle,
        people_brief_bio,
        people_date_joined
    )
values (
        1,
        'Emily',
        'Person 1',
        'emily01@gmail.com',
        'linkedin.com/in/emily',
        'linkedin.com/in/emily',
        'emily',
        'passionate graphic designer',
        '2010-05-01'
    ),
    (
        2,
        'Benjamin',
        'Person 2',
        'benjamin02@gmail.com',
        'linkedin.com/in/benjamin',
        'linkedin.com/in/benjamin',
        'benjamin',
        'skilled software engineer',
        '2010-05-02'
    ),
    (
        3,
        'Chloe',
        'Person 3',
        'chloe03@gmail.com',
        'linkedin.com/in/chloe',
        'linkedin.com/in/chloe',
        'chloe',
        'marketing enthusiast',
        '2010-05-03'
    ),
    (
        4,
        'Mason',
        'Person 4',
        'mason04@gmail.com',
        'linkedin.com/in/mason',
        'linkedin.com/in/mason',
        'mason',
        'dedicated civil engineer',
        '2010-05-04'
    ),
    (
        5,
        'Olivia',
        'Person 5',
        'olivia05@gmail.com',
        'linkedin.com/in/olivia',
        'linkedin.com/in/olivia',
        'olivia',
        'seasoned financial analyst',
        '2010-05-05'
    ),
    (
        6,
        'Ethan',
        'Person 6',
        'ethan06@gmail.com',
        'linkedin.com/in/ethan',
        'linkedin.com/in/ethan',
        'ethan',
        'energetic and results-driven sales professional',
        '2010-05-06'
    ),
    (
        7,
        'Sophia',
        'Person 7',
        'sophia07@gmail.com',
        'linkedin.com/in/sophia',
        'linkedin.com/in/sophia',
        'sophia',
        'talented UX/UI designer',
        '2010-05-07'
    ),
    (
        8,
        'Liam',
        'Person 8',
        'liam08@gmail.com',
        'linkedin.com/in/liam',
        'linkedin.com/in/liam',
        'liam',
        'experienced project manager',
        '2010-05-08'
    ),
    (
        9,
        'Natalie',
        'Person 9',
        'natalie09@gmail.com',
        'linkedin.com/in/natalie',
        'linkedin.com/in/natalie',
        'natalie',
        'accomplished data scientist',
        '2010-05-09'
    ),
    (
        10,
        'Jacob',
        'Person 10',
        'jacob10@gmail.com',
        'linkedin.com/in/jacob',
        'linkedin.com/in/jacob',
        'jacob',
        'seasoned human resources professional ',
        '2010-05-10'
    );
# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.
drop table if EXISTS peopleskills;
create table peopleskills (
    id INT auto_increment primary key,
    skills_id int not null,
    people_id int not null,
    foreign key (skills_id) references skills(skills_id),
    foreign key (people_id) references people(people_id),
    date_acquired date not null default ('2010-05-10')
);
# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
insert into peopleskills(skills_id, people_id)
values (1, 1),
    (3, 1),
    (6, 1),
    (3, 2),
    (4, 2),
    (5, 2),
    (1, 3),
    (5, 3),
    (3, 5),
    (6, 5),
    (2, 6),
    (3, 6),
    (4, 6),
    (3, 7),
    (5, 7),
    (6, 7),
    (1, 8),
    (3, 8),
    (5, 8),
    (6, 8),
    (2, 9),
    (5, 9),
    (6, 9),
    (1, 10),
    (4, 10),
    (5, 10);
# Section 8
# Create roles( id, name, sort_priority )
drop table if EXISTS roles;
create table roles(
    role_id int auto_increment primary key,
    role_name varchar(255) not null,
    role_sort_priority int not null
);
# sort_priority is an integer and is used to provide an order for sorting roles
# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)
insert into roles (role_name, role_sort_priority)
values ('Designer', 10),
    ('Developer', 20),
    ('Recruit', 30),
    ('Team Lead', 40),
    ('Boss', 50),
    ('Mentor', 60);
# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment
drop table if EXISTS peopleroles;
CREATE table peopleroles(
    id int auto_increment primary key,
    people_id int not null,
    role_id int not null,
    date_assigned date not null default '2010-05-10',
    foreign key (people_id) references people(people_id),
    foreign key (role_id) references roles(role_id)
);
# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer
insert into peopleroles(people_id, role_id)
values (1, 2),
    (2, 5),
    (2, 6),
    (3, 2),
    (3, 4),
    (4, 3),
    (5, 3),
    (6, 2),
    (6, 1),
    (7, 1),
    (8, 1),
    (8, 4),
    (9, 2),
    (10, 2),
    (10, 1);