CREATE DATABASE PATIENTS_RECORDS;

USE PATIENTS_RECORDS;

CREATE TABLE PATIENTS_DETAILS(
	PatientID			INT PRIMARY KEY IDENTITY,
	FirstName			VARCHAR(50) NOT NULL,
	LastName			VARCHAR(50) NOT NULL,
	DateOfBirth			DATE,
	Gender				CHAR(1),
	Address				VARCHAR(250),
	PhoneNumber			VARCHAR(20) NOT NULL,
	Email				VARCHAR(100),
	RegistrationDate	DATETIME DEFAULT GETDATE()
);



CREATE TABLE VISIT_DETAILS(
	VisitID				INT PRIMARY KEY IDENTITY (1,1),
	PatientID			INT NOT NULL FOREIGN KEY (PatientID) REFERENCES PATIENTS_DETAILS(PatientID),
	VisitDateTime		DATETIME NOT NULL DEFAULT GETDATE(),
	ReasonForVisit		VARCHAR(255),
	AttendingDoctor		VARCHAR(100),
	Dignosis			VARCHAR(MAX),
	Treatment			VARCHAR(MAX),
	Notes				VARCHAR(MAX),
);

DROP TABLE VISIT_DETAILS;
DROP TABLE PATIENTS_DETAILS;


 INSERT INTO PATIENTS_DETAILS(PatientID, FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email, RegistrationDate)
 VALUES 

INSERT INTO PATIENTS_DETAILS (FirstName, LastName, DateOfBirth, Gender, Address, PhoneNumber, Email)
VALUES
('John', 'Smith', '1985-03-15', 'M', '123 Main St, Anytown, CA 90210', '555-123-4567', 'john.smith@email.com'),
('Emily', 'Johnson', '1990-07-22', 'F', '456 Oak Ave, Somewhere, NY 10001', '555-234-5678', 'emily.j@email.com'),
('Michael', 'Williams', '1978-11-30', 'M', '789 Pine Rd, Nowhere, TX 75001', '555-345-6789', 'michael.w@email.com'),
('Sarah', 'Brown', '1995-05-10', 'F', '321 Elm St, Anywhere, FL 32004', '555-456-7890', 'sarah.b@email.com'),
('David', 'Jones', '1982-09-18', 'M', '654 Maple Dr, Elsewhere, IL 60007', '555-567-8901', 'david.jones@email.com'),
('Jennifer', 'Garcia', '1989-12-25', 'F', '987 Cedar Ln, Somewhere, WA 98001', '555-678-9012', 'jenn.g@email.com'),
('Robert', 'Miller', '1975-02-14', 'M', '159 Birch Blvd, Nowhere, AZ 85001', '555-789-0123', 'robert.m@email.com'),
('Lisa', 'Davis', '1992-08-08', 'F', '753 Spruce Ct, Anywhere, MA 02101', '555-890-1234', 'lisa.d@email.com'),
('Thomas', 'Rodriguez', '1980-04-20', 'M', '951 Aspen Way, Elsewhere, CO 80001', '555-901-2345', 'thomas.r@email.com'),
('Amanda', 'Wilson', '1998-01-05', 'F', '357 Redwood Pl, Somewhere, GA 30001', '555-012-3456', 'amanda.w@email.com'),
('James', 'Martinez', '1987-06-12', 'M', '246 Willow St, Anytown, OH 43001', '555-123-7890', 'james.m@email.com'),
('Jessica', 'Anderson', '1993-03-28', 'F', '135 Sycamore Ave, Somewhere, NC 27001', '555-234-8901', 'jessica.a@email.com'),
('Daniel', 'Taylor', '1984-10-15', 'M', '864 Oakwood Dr, Nowhere, MI 48001', '555-345-9012', 'daniel.t@email.com'),
('Ashley', 'Thomas', '1991-07-03', 'F', '975 Pinecrest Rd, Anywhere, VA 22001', '555-456-0123', 'ashley.t@email.com'),
('Matthew', 'Hernandez', '1979-12-19', 'M', '753 Magnolia Ln, Elsewhere, PA 15001', '555-567-1234', 'matthew.h@email.com'),
('Elizabeth', 'Moore', '1986-09-07', 'F', '642 Dogwood Cir, Somewhere, NJ 07001', '555-678-2345', 'elizabeth.m@email.com'),
('Christopher', 'Martin', '1976-04-30', 'M', '531 Holly St, Nowhere, MO 63001', '555-789-3456', 'christopher.m@email.com'),
('Stephanie', 'Jackson', '1994-01-22', 'F', '429 Juniper Ave, Anywhere, TN 37001', '555-890-4567', 'stephanie.j@email.com'),
('Andrew', 'Thompson', '1983-08-11', 'M', '318 Redbud Dr, Elsewhere, IN 46001', '555-901-5678', 'andrew.t@email.com'),
('Nicole', 'White', '1997-05-14', 'F', '207 Spruce Pl, Somewhere, KY 40001', '555-012-6789', 'nicole.w@email.com'),
('Joshua', 'Lopez', '1988-02-27', 'M', '196 Cedar Blvd, Anytown, SC 29001', '555-123-8901', 'joshua.l@email.com'),
('Megan', 'Lee', '1996-11-08', 'F', '185 Maple Ct, Somewhere, AL 35001', '555-234-9012', 'megan.l@email.com'),
('Kevin', 'Gonzalez', '1981-07-17', 'M', '174 Birch Way, Nowhere, LA 70001', '555-345-0123', 'kevin.g@email.com'),
('Rachel', 'Harris', '1999-04-02', 'F', '163 Willow Rd, Anywhere, OK 73001', '555-456-1234', 'rachel.h@email.com'),
('Brian', 'Clark', '1977-01-25', 'M', '152 Oak St, Elsewhere, UT 84001', '555-567-2345', 'brian.c@email.com'),
('Lauren', 'Lewis', '1989-10-13', 'F', '141 Pine Ave, Somewhere, IA 50001', '555-678-3456', 'lauren.l@email.com'),
('Timothy', 'Robinson', '1974-06-09', 'M', '130 Elm Dr, Nowhere, AR 72001', '555-789-4567', 'timothy.r@email.com'),
('Amber', 'Walker', '1992-03-21', 'F', '119 Maple Ln, Anywhere, MS 39001', '555-890-5678', 'amber.w@email.com'),
('Richard', 'Perez', '1980-12-04', 'M', '108 Cedar Cir, Elsewhere, KS 66001', '555-901-6789', 'richard.p@email.com'),
('Samantha', 'Hall', '1995-09-16', 'F', '97 Birch St, Somewhere, NE 68001', '555-012-7890', 'samantha.h@email.com'),
('Charles', 'Young', '1986-05-29', 'M', '86 Willow Ave, Anytown, NM 87001', '555-123-9012', 'charles.y@email.com'),
('Brittany', 'Allen', '1993-02-10', 'F', '75 Oakwood Dr, Somewhere, ID 83001', '555-234-0123', 'brittany.a@email.com'),
('Steven', 'Sanchez', '1984-11-23', 'M', '64 Pinecrest Rd, Nowhere, ME 04001', '555-345-1234', 'steven.s@email.com'),
('Victoria', 'Wright', '1991-08-06', 'F', '53 Magnolia Ln, Anywhere, NH 03001', '555-456-2345', 'victoria.w@email.com'),
('Jason', 'King', '1979-04-18', 'M', '42 Dogwood Cir, Elsewhere, VT 05001', '555-567-3456', 'jason.k@email.com'),
('Rebecca', 'Scott', '1987-01-31', 'F', '31 Holly St, Somewhere, RI 02001', '555-678-4567', 'rebecca.s@email.com'),
('Jeffrey', 'Green', '1976-10-14', 'M', '20 Juniper Ave, Nowhere, DE 19001', '555-789-5678', 'jeffrey.g@email.com'),
('Heather', 'Baker', '1994-07-27', 'F', '19 Redbud Dr, Anywhere, WV 25001', '555-890-6789', 'heather.b@email.com'),
('Ryan', 'Adams', '1983-03-09', 'M', '18 Spruce Pl, Elsewhere, AK 99001', '555-901-7890', 'ryan.a@email.com'),
('Melissa', 'Nelson', '1997-12-22', 'F', '17 Cedar Blvd, Somewhere, HI 96001', '555-012-8901', 'melissa.n@email.com'),
('Gary', 'Hill', '1988-09-04', 'M', '16 Maple Ct, Anytown, WY 82001', '555-123-0123', 'gary.h@email.com'),
('Christina', 'Ramirez', '1996-06-17', 'F', '15 Birch Way, Somewhere, MT 59001', '555-234-1234', 'christina.r@email.com'),
('Eric', 'Campbell', '1981-02-28', 'M', '14 Willow Rd, Nowhere, SD 57001', '555-345-2345', 'eric.c@email.com'),
('Tiffany', 'Mitchell', '1999-11-11', 'F', '13 Oak St, Anywhere, ND 58001', '555-456-3456', 'tiffany.m@email.com'),
('Scott', 'Roberts', '1977-08-24', 'M', '12 Pine Ave, Elsewhere, DC 20001', '555-567-4567', 'scott.r@email.com'),
('Kayla', 'Carter', '1989-05-07', 'F', '11 Elm Dr, Somewhere, PR 00001', '555-678-5678', 'kayla.c@email.com'),
('Brandon', 'Phillips', '1974-01-20', 'M', '10 Maple Ln, Nowhere, VI 00801', '555-789-6789', 'brandon.p@email.com'),
('Danielle', 'Evans', '1992-10-03', 'F', '9 Cedar Cir, Anywhere, GU 96901', '555-890-7890', 'danielle.e@email.com'),
('Justin', 'Turner', '1980-07-16', 'M', '8 Birch St, Elsewhere, MP 96950', '555-901-8901', 'justin.t@email.com'),
('Hannah', 'Parker', '1995-04-29', 'F', '7 Willow Ave, Somewhere, AS 96799', '555-012-9012', 'hannah.p@email.com');


INSERT INTO VISIT_DETAILS(VisitID, PatientID, VisitDateTime, ReasonForVisit, AttendingDotor, Dignosis, Treatment, Notes)
VALUES

(1, '2023-01-05 09:15:00', 'Annual checkup', 'Dr. Johnson', 'Healthy', 'Routine physical exam', 'Patient in good health, recommended annual flu shot'),
(2, '2023-01-07 10:30:00', 'Persistent cough', 'Dr. Smith', 'Bronchitis', 'Antibiotics and cough syrup', 'Follow up in 2 weeks if symptoms persist'),
(3, '2023-01-10 14:00:00', 'Back pain', 'Dr. Williams', 'Muscle strain', 'Pain relievers and physical therapy', 'Avoid heavy lifting for 2 weeks'),
(4, '2023-01-12 11:45:00', 'Allergy symptoms', 'Dr. Brown', 'Seasonal allergies', 'Antihistamines', 'Pollen count high, recommended air purifier'),
(5, '2023-01-15 08:30:00', 'Diabetes follow-up', 'Dr. Davis', 'Type 2 Diabetes', 'Adjust insulin dosage', 'A1C levels improving, continue diet plan'),
(6, '2023-01-18 13:15:00', 'Migraine headaches', 'Dr. Miller', 'Chronic migraines', 'Prescribed new medication', 'Keep headache diary for next visit'),
(7, '2023-01-20 16:00:00', 'Sprained ankle', 'Dr. Wilson', 'Grade 2 ankle sprain', 'RICE protocol, brace', 'Follow up in 1 week'),
(8, '2023-01-23 09:45:00', 'Annual physical', 'Dr. Anderson', 'Normal results', 'Routine blood work', 'Cholesterol slightly elevated, recommended diet changes'),
(9, '2023-01-25 10:30:00', 'High blood pressure', 'Dr. Thomas', 'Hypertension', 'Blood pressure medication', 'Monitor at home twice weekly'),
(10, '2023-01-28 14:15:00', 'Rash', 'Dr. Garcia', 'Contact dermatitis', 'Topical steroid cream', 'Possible reaction to new laundry detergent'),
(11, '2023-02-01 11:00:00', 'Flu symptoms', 'Dr. Martinez', 'Influenza A', 'Tamiflu, rest and fluids', 'Contagious, isolate for 5 days'),
(12, '2023-02-03 15:30:00', 'Annual eye exam', 'Dr. Taylor', 'Myopia', 'Updated eyeglass prescription', 'Vision stable from last year'),
(13, '2023-02-06 08:45:00', 'Sports physical', 'Dr. Hernandez', 'Cleared for sports', 'No restrictions', 'Needs updated immunization records'),
(14, '2023-02-09 12:15:00', 'Anxiety', 'Dr. Moore', 'Generalized anxiety disorder', 'Therapy and medication', 'Follow up in 4 weeks'),
(15, '2023-02-12 10:00:00', 'Ear pain', 'Dr. Martin', 'Otitis media', 'Antibiotics', 'Follow up if pain persists after 3 days'),
(16, '2023-02-15 14:45:00', 'Vaccinations', 'Dr. Jackson', 'Vaccination administration', 'Flu and TDAP vaccines', 'Mild arm soreness expected'),
(17, '2023-02-18 09:30:00', 'Insomnia', 'Dr. Thompson', 'Sleep disorder', 'Sleep hygiene counseling', 'Recommended sleep study if no improvement'),
(18, '2023-02-21 16:15:00', 'Stomach pain', 'Dr. White', 'Gastritis', 'Antacids and diet modification', 'Avoid spicy and acidic foods'),
(19, '2023-02-24 13:00:00', 'Follow-up for bronchitis', 'Dr. Lopez', 'Resolved bronchitis', 'Discontinue antibiotics', 'Lungs clear, no further treatment needed'),
(20, '2023-02-27 08:15:00', 'Depression screening', 'Dr. Lee', 'Mild depression', 'Counseling recommended', 'Follow up in 6 weeks'),
(21, '2023-03-02 11:30:00', 'Allergy follow-up', 'Dr. Gonzalez', 'Allergies controlled', 'Continue current regimen', 'Symptoms much improved'),
(22, '2023-03-05 15:00:00', 'Wart removal', 'Dr. Harris', 'Plantar wart', 'Cryotherapy', 'May require additional treatments'),
(23, '2023-03-08 10:45:00', 'Pregnancy confirmation', 'Dr. Clark', '8 weeks pregnant', 'Prenatal vitamins', 'First trimester screening scheduled'),
(24, '2023-03-11 14:30:00', 'Diabetes education', 'Dr. Lewis', 'Type 1 Diabetes', 'Insulin pump training', 'Glucose monitoring demonstration'),
(25, '2023-03-14 09:15:00', 'Physical therapy eval', 'Dr. Robinson', 'Post-op knee rehab', 'PT 2x/week for 6 weeks', 'Good range of motion returning'),
(26, '2023-03-17 12:00:00', 'Skin lesion', 'Dr. Walker', 'Benign mole', 'No treatment needed', 'Monitor for changes'),
(27, '2023-03-20 16:45:00', 'Child wellness check', 'Dr. Perez', 'Normal development', 'Vaccinations up to date', 'Next checkup at 24 months'),
(28, '2023-03-23 08:00:00', 'Blood test results', 'Dr. Hall', 'Vitamin D deficiency', 'Supplement prescribed', 'Recheck levels in 3 months'),
(29, '2023-03-26 13:30:00', 'Work injury', 'Dr. Young', 'Carpal tunnel syndrome', 'Wrist brace, ergonomic eval', 'Work restrictions for 2 weeks'),
(30, '2023-03-29 10:15:00', 'Sinus infection', 'Dr. Allen', 'Acute sinusitis', 'Antibiotics and decongestant', 'Use saline nasal spray'),
(31, '2023-04-01 15:30:00', 'Pre-op clearance', 'Dr. Sanchez', 'Cleared for surgery', 'EKG and labs normal', 'Scheduled for next week'),
(32, '2023-04-04 09:45:00', 'Smoking cessation', 'Dr. Wright', 'Nicotine dependence', 'Prescribed cessation aids', 'Follow up monthly'),
(33, '2023-04-07 12:15:00', 'Annual physical', 'Dr. King', 'Normal exam', 'Recommend colonoscopy', 'Patient overdue for screening'),
(34, '2023-04-10 16:00:00', 'UTI symptoms', 'Dr. Scott', 'Urinary tract infection', 'Antibiotics', 'Drink plenty of water'),
(35, '2023-04-13 08:30:00', 'Cholesterol check', 'Dr. Green', 'Hyperlipidemia', 'Statins prescribed', 'Begin low-fat diet'),
(36, '2023-04-16 11:45:00', 'Post-op follow-up', 'Dr. Baker', 'Healing well', 'Suture removal', 'Wound care instructions given'),
(37, '2023-04-19 14:15:00', 'Thyroid check', 'Dr. Adams', 'Hypothyroidism', 'Adjust levothyroxine dose', 'Recheck TSH in 6 weeks'),
(38, '2023-04-22 10:00:00', 'Sports injury', 'Dr. Nelson', 'Pulled hamstring', 'Rest and physical therapy', 'No running for 2 weeks'),
(39, '2023-04-25 13:30:00', 'Medication refill', 'Dr. Hill', 'Stable condition', 'Refill prescriptions', 'No changes needed'),
(40, '2023-04-28 09:00:00', 'Rash worsening', 'Dr. Ramirez', 'Eczema flare-up', 'Stronger topical steroid', 'Use moisturizer daily'),
(41, '2023-05-01 15:15:00', 'Annual women''s exam', 'Dr. Campbell', 'Normal pap smear', 'Mammogram recommended', 'All screenings up to date'),
(42, '2023-05-04 08:45:00', 'Childhood vaccinations', 'Dr. Mitchell', 'Vaccines administered', 'DTaP and MMR', 'Mild fever possible'),
(43, '2023-05-07 12:30:00', 'Concussion follow-up', 'Dr. Roberts', 'Post-concussion syndrome', 'Cognitive rest', 'No sports for 1 month'),
(44, '2023-05-10 16:45:00', 'Pre-travel consult', 'Dr. Carter', 'Travel advice', 'Vaccinations and medications', 'Leaving for trip in 2 weeks'),
(45, '2023-05-13 10:30:00', 'Blood pressure check', 'Dr. Phillips', 'Hypertension controlled', 'Continue current meds', 'Home readings stable'),
(46, '2023-05-16 14:00:00', 'Allergy testing', 'Dr. Evans', 'Dust mite allergy', 'Allergy shots recommended', 'Start immunotherapy'),
(47, '2023-05-19 08:15:00', 'Geriatric assessment', 'Dr. Turner', 'Mild arthritis', 'Pain management plan', 'Home safety evaluation done'),
(48, '2023-05-22 11:30:00', 'STD screening', 'Dr. Parker', 'Negative results', 'Safe sex counseling', 'Annual screening recommended'),
(49, '2023-05-25 15:45:00', 'Work physical', 'Dr. Johnson', 'Cleared for duty', 'No restrictions', 'Valid for 1 year'),
(50, '2023-05-28 09:30:00', 'Mental health follow-up', 'Dr. Smith', 'Anxiety improved', 'Continue therapy', 'Medication effective');