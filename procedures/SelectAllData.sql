create or alter procedure SelectAllData
as
select (select id as [Tag.id], name as [Tag.name] From Tag
for json path) as Tags, 
(select id as [Task.id], name as [Task.name],
priority as [Task.priority], Tag_id as [Task.Tag_id] From Task
for json path ) as Tasks,
(select id as [Token.id], name as [Token.name], Task_id as [Token.Task_id] From Token
for json path) as Tokens

for json path
go

exec SelectAllData;