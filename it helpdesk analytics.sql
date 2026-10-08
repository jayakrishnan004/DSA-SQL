use it_helpdesk_analytics;

CREATE TABLE it_helpdesk_analytics.Employees (
        Employee_ID VARCHAR(10) PRIMARY KEY,
        Employee_Name VARCHAR(50),
        Department VARCHAR(50),
        Email VARCHAR(100)
    );
    
CREATE TABLE it_helpdesk_analytics.Support_Tickets (
        Ticket_ID VARCHAR(10) PRIMARY KEY,
        Employee_ID VARCHAR(10),
        Issue_Type VARCHAR(50),
        Description VARCHAR(255),
        Priority VARCHAR(20),
        Status VARCHAR(20),
        FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID)
    );
    

INSERT INTO Employees VALUES('E101', 'Anjali', 'Finance', 'anjali@company.com'),
('E102', 'Rahul', 'HR', 'rahul@company.com'),
('E103', 'Neha', 'IT', 'neha@company.com'),
('E104', 'Arun', 'Marketing', 'arun@company.com'),
('E105', 'Meera', 'Sales', 'meera@company.com');

INSERT INTO Support_Tickets VALUES
('T001', 'E101', 'Network', 'Unable to connect to office Wi-Fi', 'High', 'Open'),

('T002', 'E102', 'Software', 'MS Excel installation required', 'Medium', 'Resolved'),

('T003', 'E104', 'Email', 'Unable to send emails', 'High', 'Open'),

('T004', 'E105', 'Hardware', 'Keyboard not working', 'Low', 'In Progress'),

('T005', 'E101', 'Password', 'Password reset required', 'Medium', 'Resolved');