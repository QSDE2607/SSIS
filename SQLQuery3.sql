use asm_1;

select * from [dbo].[Pet] ;

select * from [dbo].[Bread] order by Bread_id ;

select Bread_Name from [dbo].[Bread] group by Bread_Name  ;


delete from [dbo].[Pet];
DBCC CHECKIDENT ('[dbo].[Pet]', RESEED, 0);



delete from [dbo].[Bread];
DBCC CHECKIDENT ('[dbo].[Bread]', RESEED, 0);

