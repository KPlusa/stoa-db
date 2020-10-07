  create table [Tag]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) unique not null,
  )

  create table [Task]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(255) unique not null,
  priority int not null check (priority >0 and priority<=10),
  Tag_id int not null,
  Foreign key (Tag_id) references [Tag] (id)
  )

  create table [Token]
  (
  id int primary KEY IDENTITY (1,1),
  name varchar(12) check (LEN (name)=12) unique not null,
  generated date not null,
  Task_id int,
  Foreign key (Task_id) references [Task] (id)
  )





