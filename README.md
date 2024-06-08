# Resident-Hall-Management-System
This is a final project for Database management system course CS5200 

1. TECHNICAL DESCRIPTION:
The Resident Hall Management System is built using Python for the backend development. We have used the MySQL workbench for the database and used PyMySQL as a connector for the project. The application is designed with a client-server architecture where the server is responsible for managing the database and serving requests made by the client.
The system has two types of users: Supervisor and Proctor. The supervisor has the authority to manage proctors, resident halls, and their assignments. The proctor is responsible for managing the residents and their guests. The system is designed to provide access control, where a user can only perform actions assigned to their role.
The system is implemented with a simple command-line interface, where the user can navigate through the different functionalities using the menu. The user can log in with their username and password, which is validated against the database. Once logged in, the user can access the functionalities assigned to their role. The user can log out of the system once their work is done.
The Resident Hall Management System is designed with a robust database schema that can handle large amounts of data. The database schema is normalized to the 3rd normal form to reduce redundancy and improve data consistency. The system also implements various checks and constraints to ensure that data entered the system is accurate and valid.
Overall, the Resident Hall Management System is a reliable and efficient system that simplifies the management of residence halls in universities and colleges. It is designed to improve the living experience for students and increase the efficiency of administrators.

2. DATABASE DESCRIPTION
The database schema for our project consists of 8 tables as given below -
● User Table - The user table stores information about the users of the system (the Supervisor for a resident hall and the proctor working under the supervisor) such as their user_id, first_name, last_name, role (Proctor/Supervisor), phone_number, and mail_id
● Resident Hall Table - The resident_hall table stores information about the resident halls where students reside such as the hallname, street_name, zip_code, city, state. It also has two foreign keys, supervisor_id and proctor_id, that reference the user table to identify the supervisor and proctor for each resident hall
● Resident Table - The resident table stores information about the residents or students such as their resident_id, first_name, last_name, room_number, phone_number, and the hallname they belong to. The hallname field is a foreign key referencing the hallname field in the resident_hall table
● User Access Table - The user_access table stores login credentials for the users of the system such as their user_id, pass_key, and active status. The user_id field is a foreign key referencing the user_id field in the user table
● Guest Table - The guest table stores information about guests such as their id, first_name, last_name, resident_id, and id_no. The resident_id field is a foreign key referencing the resident_id field in the resident table
● Driver License Table - The driverLicense table stores information about driver licenses provided by a guest as identification such as the card_id, state, and expiration_date
● Passport Table - The passport table stores information about passports provided by a guest as identification such as the card_id, country, and expiry_date
● State ID Table - The stateID table stores information about state IDs provided by a guest as identification such as the card_id, state, and date_of_birth
