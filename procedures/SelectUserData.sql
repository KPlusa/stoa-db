create or alter procedure SelectUserData
as
select '{
    "Username": "TomHanks",
    "Tasks": [
        {"ID": 1,"Name": "Upload project","proprity": 1,"TAGS": [
                {"Name": "Development"},{"Name": "Misc"},{"Name": "Others"}
                ]
            },
        {"ID": 2,"Name": "Walk a dog", "proprity": 2,"TAGS": [
                {"Name": "Animals"},{"Name": "Others"}
                ]
            }
]}'
go

exec SelectUserData;