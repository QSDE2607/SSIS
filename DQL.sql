use asm_1;
select count(*) from pet where [Pet_Vaccinated_ID] = '1' and [Pet_Sterilized_ID]= '1';
select count(*) from pet group by Pet_State_ID;