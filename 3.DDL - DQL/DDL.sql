create database asm_1;
use asm_1;

create table Bread(
	Bread_ID int IDENTITY(1,1) primary key,
	Bread_Name varchar(255)
);
create table Type(
	Type_ID int IDENTITY(1,1) primary key,
	Type_Name varchar(3)
);
create table Gender(
	Gender_ID int IDENTITY(1,1) primary key,
	Gender_Name varchar(6)
);
create table Color(
	Color_ID int IDENTITY(1,1) primary key,
	Color_Name varchar(255)
);
create table MaturitySize(
	MaturitySize_ID int IDENTITY(1,1) primary key,
	MaturitySize_Name varchar(13)
);
create table FurLength (
	FurLength_ID int IDENTITY(1,1) primary key,
	FurLength_Name varchar(13)
);
create table YESorNO_table(
	YESorNO_ID int IDENTITY(1,1) primary key,
	YESorNO_Name varchar(3)
);
create table Health (
	Health_ID int IDENTITY(1,1) primary key,
	Health_Name varchar(14)
);
create table State (
	State_ID int IDENTITY(1,1) primary key,
	State_Name varchar(255)
);


create table Pet (
	Pet_ID int IDENTITY(1,1) primary key,
	Pet_Type_ID int,
	Pet_Gender_ID int,
	Pet_Bread1_ID int,
	Pet_Bread2_ID int,
	Pet_Color1_ID int,
	Pet_Color2_ID int,
	Pet_Color3_ID int,
	Pet_MaturitySize_ID int,
	Pet_FurLength_ID int,
	Pet_Vaccinated_ID int,
	Pet_Dewormed_ID int,
	Pet_Sterilized_ID int,
	Pet_Health_ID int,
	Pet_State_ID int,
	Pet_Age int,
	Pet_Quantity int,
	Pet_Fee int,
	Pet_RescuerID int,
	Foreign key (Pet_Type_ID) references Type(Type_ID),
	Foreign key (Pet_Gender_ID) references Gender(Gender_ID),
	Foreign key (Pet_Bread1_ID) references Bread(Bread_ID),
	Foreign key (Pet_Bread2_ID) references Bread(Bread_ID),
	Foreign key (Pet_Color1_ID) references Color(Color_ID),
	Foreign key (Pet_Color2_ID) references Color(Color_ID),
	Foreign key (Pet_Color3_ID) references Color(Color_ID),
	Foreign key (Pet_MaturitySize_ID) references MaturitySize(MaturitySize_ID),
	Foreign key (Pet_FurLength_ID) references FurLength(FurLength_ID),
	Foreign key (Pet_Vaccinated_ID) references YESorNO_table(YESorNO_ID),
	Foreign key (Pet_Dewormed_ID) references YESorNO_table(YESorNO_ID),
	Foreign key (Pet_Sterilized_ID) references YESorNO_table(YESorNO_ID),
	Foreign key (Pet_Health_ID) references Health(Health_ID),
	Foreign key (Pet_State_ID) references State(State_ID)
);

