-- QUIZ 1 DB LAB
-- 2540124122 - Justin Thejasukmana

-- No 1
create table membership(

	MembershipId char(5) primary key,
    CustomerId char(5) not null,
    MemberPoint int not null,
    JoinDate date not null,
    ExpiryDate date not null,
    
    FOREIGN KEY(CustomerId) REFERENCES customer(CustomerId) on UPDATE CASCADE on DELETE CASCADE
)

-- No 2
INSERT INTO `membership`(`MembershipId`, `CustomerId`, `MemberPoint`, `JoinDate`, `ExpiryDate`) VALUES 
	
    ('ME001', 'CU001', '10', '2022-06-23', '2023-06-23'),
    ('ME002', 'CU002', '13', '2022-06-24', '2023-06-24'),
    ('ME003', 'CU003', '21', '2022-06-25', '2023-06-25')
	
-- No 3
select 

	staff.StaffName,
    staff.StaffEmail,
    transactionheader.TransactionDate

from staff
join transactionheader on transactionheader.StaffId = staff.StaffId
where month(transactionheader.TransactionDate) like 6

-- No 4
select 

	th.TransactionId,
    customer.CustomerId,
    td.TeaId,
    td.Quantity,
    th.TransactionDate

from transactionheader as th
join customer on customer.CustomerId = th.CustomerId
join transactiondetail as td on td.TransactionId = th.TransactionId
where td.Quantity > 5 and
dayname(th.TransactionDate) not in('Saturday', 'Sunday')

-- No 5
start TRANSACTION;

UPDATE tea, transactiondetail

	set tea.TeaPrice = tea.TeaPrice + 10000

where RIGHT(transactiondetail.TransactionId, 1) % 2 != 0;

SELECT * FROM tea;

commit;