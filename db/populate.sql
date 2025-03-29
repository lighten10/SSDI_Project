

/*
delete from Appointment
delete from Doctor
delete from Patient
delete from Department
delete from OtherStaff
delete from LoginTable
*/

USE healthsphere
GO


INSERT INTO LoginTable VALUES ('admin' ,'admin@healthsphere.com' ,   3)


--DEPARTMENT INSERTION
insert into department values(1 , 'Cardiology' , 'We have the best heart specialists in town .Each one of them is very competent and experienced.')
insert into department values(2 , 'Orthopaedics' , 'Orthopedic surgeons use surgical means to treat musculoskeletal trauma, infections, tumors. We believe in the best.')
insert into department values(3 , 'Ears Nose Throat' , 'They are gentle. And are trained to handle kids as well as adults.')
insert into department values(4 , 'Physiotherapy ',' Physiotherapists work through physical therapies such as exercise, and manipulation of bones, joints and muscle tissues.' )
insert into department values(5 , 'Neurology', 'A medical speciality dealing with disorders of the nervous system. It deals with the diagnosis and treatment of all categories of disease.')



--LOGIN TABLE INSERTIION
INSERT INTO LoginTable(Email, Password, Type) VALUES('popeye@healthsphere.com', 'asd', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('pinkpanther@healthsphere.com', 'asd', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('mickeymouse@healthsphere.com', 'asd', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('donaldduck@healthsphere.com', 'asd', 2)
INSERT INTO LoginTable(Email, Password, Type) VALUES('doramon@healthsphere.com', 'asd', 2)

INSERT INTO LoginTable(Email, Password, Type) VALUES('superman@healthsphere.com', 'asd', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('spiderman@healthsphere.com', 'asd', 1)
INSERT INTO LoginTable(Email, Password, Type) VALUES('deadpool@healthsphere.com', 'asd', 1)



--DOCTOR INSERTIONS
DECLARE @ID INT
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'popeye@healthsphere.com'
INSERT INTO Doctor VALUES(@ID, 'Popeye', '123456789', 'Wonderland, DC', '01-01-1990', 'M', 1, 2500, 30000, 4, 0, 'MD', 'Cardiologist', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'pinkpanther@healthsphere.com'
INSERT INTO Doctor VALUES(@ID, 'Pink Panther', '123456789', 'Wonderland, DC', '01-01-1990', 'M', 2, 2500, 30000, 4, 0, 'MD', 'Orthopedic', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'mickeymouse@healthsphere.com'
INSERT INTO Doctor VALUES(@ID, 'Mickey Mouse', '123456789', 'Wonderland, DC', '01-01-1990', 'M', 3, 2500, 30000, 4, 0, 'MD', 'General', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'donaldduck@healthsphere.com'
INSERT INTO Doctor VALUES(@ID, 'Donald Duck', '123456789', 'Wonderland, DC', '01-01-1990', 'M', 4, 2500, 30000, 4, 0, 'MD', 'Physio', 10, 1)
SELECT @ID = LoginID FROM LoginTable WHERE Email = 'doramon@healthsphere.com'
INSERT INTO Doctor VALUES(@ID, 'Doramon', '123456789', 'Wonderland, DC', '01-01-1990', 'M', 5, 2500, 30000, 4, 0, 'MD', 'Neurologist', 10, 1)

--PATIENT INSERTIONS
DECLARE @P_ID INT
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='superman@healthsphere.com'
INSERT INTO Patient VALUES(@P_ID, 'SUPERMAN', '999-999-9999', 'Wonderland, DC', '1-1-1970', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='spiderman@healthsphere.com'
INSERT INTO Patient VALUES(@P_ID, 'SPIDERMAN', '777-777-7777', 'Marvels, DC', '1-1-1990', 'M')
SELECT @P_ID = LoginID FROM LoginTable WHERE Email='deadpool@healthsphere.com'
INSERT INTO Patient VALUES(@P_ID, 'DEADPOOL', '333-333-3333', 'Transformers, DC', '1-1-2010', 'M')


select * from OtherStaff

insert into OtherStaff values ('Joker', '222-222-2222','Wonderland, DC', 'Guard', 'M', '01-01-2007', 'Graduate',5000)
insert into OtherStaff values ('Loki', '444-444-4444','Wonderland, DC', 'Sweeper', 'M', '01-01-2005', 'Graduate',5000)
insert into OtherStaff values ('Darth Vader', '666-666-6666','Wonderland, DC', 'Security', 'M', '01-01-2003', 'Graduate',5000)






--Because I have inserted the date and time in a particular format in the appointment table and that format has to be maintained
--for proper working

/*
--APPOINTMENT INSERTIONS 
DECLARE @DOCTOR_ID INT
DECLARE @PATIENT_ID INT
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='ABC@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 10:00:00', 3)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='farhan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 12:00:00', 1)
SELECT @DOCTOR_ID = LoginID FROM LoginTable WHERE Email='hassaan@gmail.com'
SELECT @PATIENT_ID = LoginID FROM LoginTable WHERE Email='DEF@gmail.com'
INSERT INTO Appointment(DoctorID, PatientID, Date, Appointment_Status) VALUES(@DOCTOR_ID, @PATIENT_ID, '2017-5-4 16:00:00', 3)
*/

