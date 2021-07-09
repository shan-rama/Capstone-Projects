USE [projectwastecycle]
GO

---Create Table generate
CREATE TABLE [dbo].[generate](
	[Year] [int] NOT NULL,
	[generated] [float] NULL,
	[domwaste] [float] NULL,
	[nondomwaste] [float] NULL,
	[candd] [float] NULL,
	[ferrousmetal] [float] NULL,
	[nonferrousmetal] [float] NULL,
	[usedslag] [float] NULL,
	[scraptyres] [float] NULL,
	[horticultural] [float] NULL,
	[wood] [float] NULL,
	[papercardboard] [float] NULL,
	[glass] [float] NULL,
	[food] [float] NULL,
	[ashsludge] [float] NULL,
	[textileleather] [float] NULL,
	[plastic] [float] NULL,
	[Others] [float] NULL,
	[population] [float] NULL,
 CONSTRAINT [PK_generate] PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO





--Insert values
INSERT INTO [dbo].[generate]
           ([Year]
           ,[generated]
           ,[domwaste]
           ,[nondomwaste]
           ,[candd]
           ,[ferrousmetal]
           ,[nonferrousmetal]
           ,[usedslag]
           ,[scraptyres]
           ,[horticultural]
           ,[wood]
           ,[papercardboard]
           ,[glass]
           ,[food]
           ,[ashsludge]
           ,[textileleather]
           ,[plastic]
           ,[Others]
           ,[population])
     VALUES
           (<Year, int,>
           ,<generated, float,>
           ,<domwaste, float,>
           ,<nondomwaste, float,>
           ,<candd, float,>
           ,<ferrousmetal, float,>
           ,<nonferrousmetal, float,>
           ,<usedslag, float,>
           ,<scraptyres, float,>
           ,<horticultural, float,>
           ,<wood, float,>
           ,<papercardboard, float,>
           ,<glass, float,>
           ,<food, float,>
           ,<ashsludge, float,>
           ,<textileleather, float,>
           ,<plastic, float,>
           ,<Others, float,>
           ,<population, float,>)
GO

USE [projectwastecycle]
GO

---Create Table recycle
CREATE TABLE [dbo].[recycle](
	[Year] [int] NOT NULL,
	[recycled] [float] NOT NULL,
	[exportrecyc] [float] NULL,
	[c_d] [float] NULL,
	[ferrousmetal] [float] NULL,
	[nonferrousmetal] [float] NULL,
	[usedslag] [float] NULL,
	[scraptyres] [float] NULL,
	[horticultural] [float] NULL,
	[wood] [float] NULL,
	[papercardboard] [float] NULL,
	[glass] [float] NULL,
	[food] [float] NULL,
	[ashsludge] [float] NULL,
	[textileleather] [float] NULL,
	[plastic] [float] NULL,
	[others] [float] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[recycle]  WITH CHECK ADD  CONSTRAINT [FK_recycle_generate1] FOREIGN KEY([Year])
REFERENCES [dbo].[generate] ([Year])
GO

ALTER TABLE [dbo].[recycle] CHECK CONSTRAINT [FK_recycle_generate1]
GO

--Insert values into table recycle
INSERT INTO [dbo].[recycle]
           ([Year]
           ,[recycled]
           ,[exportrecyc]
           ,[c_d]
           ,[ferrousmetal]
           ,[nonferrousmetal]
           ,[usedslag]
           ,[scraptyres]
           ,[horticultural]
           ,[wood]
           ,[papercardboard]
           ,[glass]
           ,[food]
           ,[ashsludge]
           ,[textileleather]
           ,[plastic]
           ,[others])
     VALUES
           (<Year, int,>
           ,<recycled, float,>
           ,<exportrecyc, float,>
           ,<c_d, float,>
           ,<ferrousmetal, float,>
           ,<nonferrousmetal, float,>
           ,<usedslag, float,>
           ,<scraptyres, float,>
           ,<horticultural, float,>
           ,<wood, float,>
           ,<papercardboard, float,>
           ,<glass, float,>
           ,<food, float,>
           ,<ashsludge, float,>
           ,<textileleather, float,>
           ,<plastic, float,>
           ,<others, float,>)
GO

---Create table incinerate
CREATE TABLE [dbo].[incinerate](
	[year] [int] NOT NULL,
	[Incinerated] [float] NULL,
	[energyproduced] [float] NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[incinerate]  WITH CHECK ADD  CONSTRAINT [FK_incinerate_generate] FOREIGN KEY([year])
REFERENCES [dbo].[generate] ([Year])
GO

ALTER TABLE [dbo].[incinerate] CHECK CONSTRAINT [FK_incinerate_generate]
GO



--insert values into table incinerate
INSERT INTO [dbo].[incinerate]
           ([year]
           ,[Incinerated]
           ,[energyproduced])
     VALUES
           (<year, int,>
           ,<Incinerated, float,>
           ,<energyproduced, float,>)
GO



--create table disposed

CREATE TABLE [dbo].[disposed](
	[Year] [int] NOT NULL,
	[disposed] [float] NOT NULL,
	[Domestic] [float] NOT NULL,
	[Non_Dom] [float] NOT NULL,
	[c_d] [float] NULL,
	[ferrous] [float] NULL,
	[nonferrous] [float] NULL,
	[usedslag] [float] NULL,
	[scraptyres] [float] NULL,
	[Horticultural] [float] NULL,
	[Wood] [float] NULL,
	[Paper_Cardboard] [float] NULL,
	[Glass] [float] NULL,
	[Food] [float] NULL,
	[ashsludge] [float] NULL,
	[Textile_Leather] [float] NULL,
	[Plastic] [float] NULL,
	[Others] [float] NULL,
 CONSTRAINT [PK_wastedisposed] PRIMARY KEY CLUSTERED 
(
	[Year] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

--insert values into disposed
INSERT INTO [dbo].[disposed]
           ([Year]
           ,[disposed]
           ,[Domestic]
           ,[Non_Dom]
           ,[c_d]
           ,[ferrous]
           ,[nonferrous]
           ,[usedslag]
           ,[scraptyres]
           ,[Horticultural]
           ,[Wood]
           ,[Paper_Cardboard]
           ,[Glass]
           ,[Food]
           ,[ashsludge]
           ,[Textile_Leather]
           ,[Plastic]
           ,[Others])
     VALUES
           (<Year, int,>
           ,<disposed, float,>
           ,<Domestic, float,>
           ,<Non_Dom, float,>
           ,<c_d, float,>
           ,<ferrous, float,>
           ,<nonferrous, float,>
           ,<usedslag, float,>
           ,<scraptyres, float,>
           ,<Horticultural, float,>
           ,<Wood, float,>
           ,<Paper_Cardboard, float,>
           ,<Glass, float,>
           ,<Food, float,>
           ,<ashsludge, float,>
           ,<Textile_Leather, float,>
           ,<Plastic, float,>
           ,<Others, float,>)
GO

--create table landfill
CREATE TABLE [dbo].[landfill](
	[year] [int] NOT NULL,
	[landfill] [float] NOT NULL,
	[Lifespan] [nvarchar](50) NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[landfill]  WITH CHECK ADD  CONSTRAINT [FK_landfill_generate] FOREIGN KEY([year])
REFERENCES [dbo].[generate] ([Year])
GO

ALTER TABLE [dbo].[landfill] CHECK CONSTRAINT [FK_landfill_generate]
GO




--insert values into table landfill
INSERT INTO [dbo].[landfill]
           ([year]
           ,[landfill]
           ,[Lifespan])
     VALUES
           (<year, int,>
           ,<landfill, float,>
           ,<Lifespan, nvarchar(50),>)
GO

--create table ghgemission
CREATE TABLE [dbo].[Ghgemission](
	[Category] [varchar](50) NOT NULL,
	[Amount] [float] NOT NULL
) ON [PRIMARY]
GO

--insert values into ghgemission
INSERT INTO [dbo].[Ghgemission]
           ([Category]
           ,[Amount])
     VALUES
           (<Category, varchar(50),>
           ,<Amount, float,>)
GO


--Create Table wastetype
CREATE TABLE [dbo].[wastetype](
	[Year] [int] NOT NULL,
	[Waste_Type] [varchar](50) NOT NULL,
	[Generated] [float] NOT NULL,
	[Recycled] [float] NOT NULL,
	[Disposed] [float] NOT NULL
) ON [PRIMARY]
GO

--insert values into wastetype
INSERT INTO [dbo].[wastetype]
           ([Year]
           ,[Waste_Type]
           ,[Generated]
           ,[Recycled]
           ,[Disposed])
     VALUES
           (<Year, int,>
           ,<Waste_Type, varchar(50),>
           ,<Generated, float,>
           ,<Recycled, float,>
           ,<Disposed, float,>)
GO



alter table generate
alter column population float;
--
UPDATE generate SET [population] = 4027887
where Year=2000;
UPDATE generate SET [population] = 4138012
where Year=2001;
UPDATE generate SET [population] = 4175950	
where Year=2002;
UPDATE generate SET [population] = 4114826	
where Year=2003;
UPDATE generate SET [population] = 4166664
where Year=2004;
UPDATE generate SET [population] = 	4265762
where Year=2005;
UPDATE generate SET [population] = 	4401365
where Year=2006;
UPDATE generate SET [population] = 	4588599
where Year=2007;
UPDATE generate SET [population] = 	4839396	
where Year=2008;
UPDATE generate SET [population] = 	4987573	
where Year=2009;
UPDATE generate SET [population] = 5076732	
where Year=2010;
UPDATE generate SET [population] = 5183688	
where Year=2011;
UPDATE generate SET [population] = 5312437		
where Year=2012;
UPDATE generate SET [population] = 5399162	
where Year=2013;
UPDATE generate SET [population] = 5469724		
where Year=2014
UPDATE generate SET [population] = 5535002		
where Year=2015
UPDATE generate SET [population] = 5607283		
where Year=2016
UPDATE generate SET [population] = 5612253		
where Year=2017
UPDATE generate SET [population] = 5638676	
where Year=2018
UPDATE generate SET [population] = 5703569
where Year=2019



-- table to view difference in waste generated, Population growth,Percentages
--Drop view if exists viewlagtable
create view viewlagtable as

select g.[Year], g.population,
Round((g.population - LAG(g.population,1) over(order by g.[Year]))
/LAG(g.population,1) over(order by g.[Year]),3)									as p_pop_diff,									
																				g.generated,
Round((g.generated - LAG(g.generated,1) over(order by g.[Year]))
/LAG(g.generated,1) over(order by g.[Year]),3)									as p_diff, 
																				  g.domwaste , 
Round(((g.domwaste/g.generated)*100),0)											as P_domwaste ,
																					g.nondomwaste,
Round(((g.nondomwaste/g.generated)*100),0)										as P_nondomwaste,
																				  r.recycled, 
																				  [exportrecyc],
Round(((r.recycled/g.generated)*100),0)											as p_recycled,

g.domwaste-d.Domestic															as Dom_recyc,
Round((((g.domwaste-d.Domestic)/g.domwaste)*100),0)								as p_Dom_recyc,
g.nondomwaste-d.Non_Dom															as non_dom_rec,
Round((((g.nondomwaste-(d.disposed-d.domestic))/g.nondomwaste)*100),0)			as p_non_dom_rec,
Round(((r.[exportrecyc]/r.recycled)*100),0) as p_ex_recyc,
Round(((r.[exportrecyc]/g.generated)*100),0) as overall_p_exp_recy,
(r.recycled-r.exportrecyc)														as loc_recyc,
Round(((((r.recycled-r.exportrecyc))/g.generated)*100),0)						as p_overall_loc_recyc,
Round((((r.recycled-r.exportrecyc)/r.recycled)*100),0)							as p_loc_recy,
																					d.disposed,
																					d.Domestic,
																					d.Non_Dom,
Round(((d.disposed/g.generated)*100),0)											as total_p_disposed, 
Round(((d.domestic/g.domwaste)*100),0)											as p_domdisposed,
Round(((d.Non_Dom/g.nondomwaste)*100),0)										as p_nondomdispose
from generate g
inner join recycle r
on g.[Year]=r.[Year]
inner join disposed d
on g.[Year]=d.[Year]
--order by Year desc;



---Creating view to find percentage of waste by category
--DROP view if exists viewperctcategory
create view viewperctcategory as
select  g.[Year],
		Round(((g.candd/g.generated)*100),2)									as p_candd,
		Round((((g.[ferrousmetal]+ g.[nonferrousmetal])/g.generated)*100),2)	as p_metal,
		Round(((g.usedslag/g.generated)*100),2)											as p_slag,
		Round(((g.[scraptyres]/g.generated)*100),2)										as p_scraptyres,
		Round(((g.[horticultural]/g.generated)*100),2)											as p_horti,
		Round(((g.[wood]/g.generated)*100),2)													as p_wood,
		Round(((g.[papercardboard]/g.generated)*100),2)										as p_pc,
		Round(((g.[glass]/g.generated)*100),2)													as p_glass,
		Round(((g.[food]/g.generated)*100),2)													as p_food,
		Round(((g.[ashsludge]/g.generated)*100),2)												as p_ashsludge,
		Round(((g.[textileleather]/g.generated)*100),2)										as p_textileleather,
		Round(((g.[plastic]/g.generated)*100),2)												as p_plastic,
		Round(((g.[Others]/g.generated)*100),2)												as p_others,

		Round(((r.c_d/g.generated)*100),2)										as pr_candd,
		Round((((r.[ferrousmetal]
		+ r.[nonferrousmetal])/g.generated)*100),2)	 as pr_metal,
		Round(((r.usedslag/g.generated)*100),2)									as pr_slag,
		Round(((r.[scraptyres]/g.generated)*100),2)								as pr_scraptyres,
		Round(((r.[horticultural]/g.generated)*100),2)							as pr_horti,
		Round(((r.[wood]/g.generated)*100),2)									as pr_wood,
		Round(((r.[papercardboard]/g.generated)*100),2)							as pr_pc,
		Round(((r.[glass]/g.generated)*100),2)									as pr_glass,
		Round(((r.[food]/g.generated)*100),2)									as pr_food,
		Round(((r.[ashsludge]/g.generated)*100),2)								as pr_ashsludge,
		Round(((r.[textileleather]/g.generated)*100),2)							as pr_textileleather,
		Round(((r.[plastic]/g.generated)*100),2)								as pr_plastic,
		Round(((r.[Others]/r.recycled)*100),2)									as pr_others,

		Round(((d.c_d/g.generated)*100),2)										as pd_candd,
		Round((((d.[ferrous]+ d.[nonferrous])/g.generated)*100),2)				as pd_metal,
		Round(((d.usedslag/g.generated)*100),2)									as pd_slag,
		Round(((d.[scraptyres]/g.generated)*100),2)								as pd_scraptyres,
		Round(((d.[Horticultural]/g.generated)*100),2)							as pd_horti,
		Round(((d.[Wood]/g.generated)*100),2)									as pd_wood,
		Round(((d.[Paper_Cardboard]/g.generated)*100),2)						as pd_pc,
		Round(((d.[Glass]/g.generated)*100),2)									as pd_glass,
		Round(((d.[Food]/g.generated)*100),2)									as pd_food,
		Round(((d.[ashsludge]/g.generated)*100),2)								as pd_ashsludge,
		Round(((d.[Textile_Leather]/g.generated)*100),2)						as pd_textileleather,
		Round(((d.[Plastic]/g.generated)*100),2)								as pd_plastic,
		Round(((d.[Others]/g.generated)*100),2)									as pd_others
from generate g
join recycle  r
ON g.[year] = r.[year]
join disposed  d
ON g.[year] = d.[year]
where g.Year BETWEEN 2012 AND 2019
--select * from viewperctcategory



--View to combine all tables
  --Drop view if exists viewalltables
  Create view viewalltables as
  select g.Year, g.generated,g.domwaste, g.population,r.recycled, i.Incinerated, i.energyproduced,d.disposed,l.landfill,l.Lifespan,
  Round((((g.domwaste/g.population)/365)*1000),2)  as  per_capita_w_dom_generated,
  Round((((d.Domestic/g.population)/365)*1000),2)	as  per_capita_w_dom_disposed,
   Round(((r.recycled/g.generated)*100),0)			as p_recycled,
   Round(((d.disposed/g.generated)*100),0)			as p_disposed,
  Round(((i.Incinerated/g.generated)*100),0)		as p_incinerated,
   Round(((l.landfill/g.generated)*100),0)			as p_landfill
  from generate g
  join recycle r
  ON g.Year = r.Year
  Join incinerate i
  ON g.Year = i.year
  Join disposed d
  ON g.Year = d.Year
  Join landfill l
  ON g.Year = l.year
--select * from viewalltables


----view for table ghgemission
--Drop view if exists viewghgemission
  create view viewghgemission as
  select * from [dbo].[Ghgemission]
  select * from viewghgemission
--select * from viewghgemission


--View created to see Waste category wise
create view wastetypeview
Select * from wastetype
select * from wastetypeview






---creating a function for output year and waste generated
--CREATE FUNCTION test8function 
()
--RETURNS TABLE
--AS
--RETURN
--   (select year,totalgenerated,domwaste,nondomwaste
--	from generate
--	where year in (select year from generate)
--	);

--calling the function using view
--create view test8view
--as
--	select * from test8function()

--function
--CREATE FUNCTION test6function 
--(@getyear int)
--RETURNS TABLE
--AS
--RETURN
--   (select year,totalgenerated,domwaste,nondomwaste
--	from generate
--	where Year = @getyear
--	);

--view to store the output which calls the function
--create view test6view
--as
--	select * from test6function(2019)
