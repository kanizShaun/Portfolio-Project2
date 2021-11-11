--importing data

SELECT [rank]
      ,[bank]
      ,[country]
      ,[total_assets_us_b]
      ,[balance_sheet]
      ,[total_assets_us_b1]
      ,[balance_sheet1]
  FROM [Portfolio].[dbo].[bank] order by 3,4

--querying data
select [balance_sheet],[balance_sheet1] from [Portfolio].[dbo].[bank]

 SELECT *
 FROM [Portfolio].[dbo].[bank] where [total_assets_us_b1] is null

select * FROM [Portfolio].[dbo].[bank] order by [total_assets_us_b] desc

select  
max([total_assets_us_b]) as highest_assets FROM [Portfolio].[dbo].[bank]

select count(distinct(country)) from [Portfolio].[dbo].[bank]

select count(distinct(total_assets_us_b1)) from [Portfolio].[dbo].[bank]

select count(distinct(Date_1)) from [Portfolio].[dbo].[bank]

select count(distinct(Date_2)) from [Portfolio].[dbo].[bank]

----------------No duplicate values--------------------------------------
 
 Select [rank], bank, country, distinct(total_assets_us_b1) from [Portfolio].[dbo].[bank]


--modifying data-------------------------------------
  
  --1st
select balance_sheet, CONVERT(date,balance_sheet) FROM [Portfolio].[dbo].[bank]

alter table [Portfolio].[dbo].[bank]
add Date_1 date

update [Portfolio].[dbo].[bank]
set Date_1 = CONVERT(date,balance_sheet)

select Date_1, CONVERT(date,balance_sheet) FROM [Portfolio].[dbo].[bank]

  --2nd

select balance_sheet1, CONVERT(date,balance_sheet1) FROM [Portfolio].[dbo].[bank]

alter table [Portfolio].[dbo].[bank]
add Date_2 date

update [Portfolio].[dbo].[bank]
set Date_2 = CONVERT(date,balance_sheet1)

select Date_2, CONVERT(date,balance_sheet1) FROM [Portfolio].[dbo].[bank]

  --dropping columns

alter table [Portfolio].[dbo].[bank]
drop column balance_sheet

alter table [Portfolio].[dbo].[bank]
drop column balance_sheet1
 
select * from [Portfolio].[dbo].[bank]

  --handling null

update [Portfolio].[dbo].[bank]
set total_assets_us_b2 = 0
where total_assets_us_b2 is null

--data collection

SELECT * FROM [Portfolio].[dbo].[bank] order by 3,4

select Date_1, country, total_assets_us_b1 from [Portfolio].[dbo].[bank]

select Date_2, country, total_assets_us_b2 from [Portfolio].[dbo].[bank]

SELECT [rank],[bank],[country]
,[total_assets_us_b1],[Date_1]
FROM [Portfolio].[dbo].[bank]

SELECT [rank],[bank],[country]
,[total_assets_us_b2],[Date_2]
FROM [Portfolio].[dbo].[bank]

select distinct(country), total_assets_us_b1 from [Portfolio].[dbo].[bank] order by total_assets_us_b1 desc

select distinct(country), total_assets_us_b2 from [Portfolio].[dbo].[bank] order by total_assets_us_b2 desc


