
  create table [stoa].[dbo].[Tag]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  )
  create table [stoa].[dbo].[Task]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  priority int not null,
  Tag_id int not null,
  Foreign key (Tag_id) references [stoa].[dbo].[Tag] (id)
  )
  create table [stoa].[dbo].[Token]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  generated date not null,
  Task_id int,
  Foreign key (Task_id) references [stoa].[dbo].[Task] (id)
  )

  
  
