
  create table [stoa_db].[dbo].[Tag]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  )
  create table [stoa_db].[dbo].[Task]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  priority int not null,
  Tag_id int not null,
  Foreign key (Tag_id) references [stoa_db].[dbo].[Tag] (id)
  )
  create table [stoa_db].[dbo].[Token]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) not null,
  generated date not null,
  Task_id int,
  Foreign key (Task_id) references [stoa_db].[dbo].[Task] (id)
  )

  
  
