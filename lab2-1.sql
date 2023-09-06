-- Create schemas

-- Create tables
CREATE TABLE IF NOT EXISTS professor
(
    p_email VARCHAR(50) NOT NULL,
    p_name VARCHAR(100),
    office VARCHAR(10),
    PRIMARY KEY(p_email)
);

CREATE TABLE IF NOT EXISTS student
(
    s_email VARCHAR(50) NOT NULL,
    s_name VARCHAR(100),
    major VARCHAR(10),
    PRIMARY KEY(s_email)
);

CREATE TABLE IF NOT EXISTS course
(
    c_number VARCHAR(50) NOT NULL,
    c_name VARCHAR(100),
    room VARCHAR(10),
    p_email VARCHAR(50),
    PRIMARY KEY(c_number),
    FOREIGN KEY (p_email) REFERENCES professor(p_email)
);

CREATE TABLE IF NOT EXISTS enroll
(
    s_email VARCHAR(50) NOT NULL,
    c_number VARCHAR(50),
    PRIMARY KEY(s_email),
    FOREIGN KEY (c_number) REFERENCES course(c_number),
    FOREIGN KEY (s_email) REFERENCES student(s_email)
);

-- Create Indexes
