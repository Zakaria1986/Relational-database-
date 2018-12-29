
-- Getts the yearly sum 
SELECT officeStaff.firstName, officeStaff.lastName,projects.repId,
SUM(officeStaff.hoursWorked * DATEDIFF(endDate,startDate)) AS totalSumHours,
SUM(officeStaff.hoursWorked*officeStaff.HourlyPay * DATEDIFF(endDate,startDate)) AS totalSumCost
FROM officeStaff JOIN projects ON projects.repId = officeStaff.repId 
GROUP by officeStaff.firstName, officeStaff.lastName,projects.repId;

-- Gets the monthly sum for every months 
select months.monthname, 
 sum(officestaff.hoursworked * officestaff.hourlypay* (DATEDIFF( Least(projects.enddate, LAST_DAY(STR_TO_DATE(CONCAT(YEAR(CURDATE()),'-',LPAD(monthId,2,'0'),'-01'), '%Y-%m-%d'))),
 greatest(projects.startDate, STR_TO_DATE(CONCAT(YEAR(CURDATE()),'-',LPAD(monthId,2,'0'),'-01'), '%Y-%m-%d')))+1)) as monthsPay
 from projects join officestaff on officestaff.repid = projects.repid cross join months
 where months.monthId between extract(month from projects.startDate) and extract(month from projects.enddate) 
 group by months.monthId
 order by months.monthId;

 -- source /Users/zakariakhan/Documents/layer9Int/DB/query/query.sql;