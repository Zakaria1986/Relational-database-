

ALTER TABLE officeStaff DROP COLUMN hoursWorked; 
ALTER TABLE officeStaff DROP COLUMN HourlyPay;

ALTER TABLE months DROP COLUMN PersonID,
						DROP COLUMN CustomerID,
					    DROP COLUMN  projectsId;

ALTER TABLE officeStaff ADD hoursWorked INT; 
ALTER TABLE officeStaff ADD HourlyPay DECIMAL(10,2); 

UPDATE officeStaff SET hoursWorked = null; commit; 
UPDATE officeStaff SET hoursWorked = 6 WHERE repId = 1; commit;
UPDATE officeStaff SET hoursWorked = 8 WHERE repId = 2; commit;
UPDATE officeStaff SET hoursWorked = 4 WHERE repId = 3; commit; 
UPDATE officeStaff SET HourlyPay = 11 WHERE repId = 1; commit;
UPDATE officeStaff SET HourlyPay = 11 WHERE repId = 2; commit;
UPDATE officeStaff SET HourlyPay = 13 WHERE repId = 3; commit; 

UPDATE customers   SET firstName = UPPER(firstname); commit; 


-- source /Users/zakariakhan/Documents/layer9Int/DB/update/updates.sql;